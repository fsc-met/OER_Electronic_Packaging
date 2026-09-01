# OpenEngineeringBooks Deployment

This directory preserves the deployment scripts and systemd unit files used to publish the **Electronic Packaging Applications** mdBook website.

The structure and behavior intentionally follow the tested EPA Section 608 deployment package. Only the project-specific names, repository path, destination directory, public URL, lock name, script names, and systemd unit names have been changed.

The files are kept in the repository for:

- Backup and recovery of the working deployment configuration.
- Documentation of how the Electronic Packaging Applications book is published.
- A tested reference for future OpenEngineeringBooks.org book deployments.

The deployment files are **not part of the book content**. Under the current website staging process, the `deployment/` directory is not copied into `website/src/` and is therefore not included in the compiled mdBook site.

These repository copies are also not automatically installed on the build server. The active copies, when installed, live under `/srv/oer/bin/` and `/etc/systemd/system/`.

---

## 1. Current Deployment Architecture

The intended publishing path is:

```text
Development computer
        |
        | git push
        v
Gitea repository
        |
        | git fetch / fast-forward update
        v
oer-build
  /srv/oer/fsc_epac
        |
        | website/run.sh
        v
  website/book/
        |
        | rsync over SSH
        v
oer-web
  /var/www/openengineeringbooks/epac/
        |
        | Nginx
        v
https://openengineeringbooks.org/epac/
```

The build server and public web server are intentionally separated:

- **`oer-build`** contains Git, mdBook, mdbook-katex, the repository, and the publishing scripts.
- **`oer-web`** serves only the generated static website through Nginx.
- The public web server does not need Git, Cargo, mdBook, or the book source repository.

The normal publishing process can be automatic. A systemd timer on `oer-build` periodically checks the Gitea repository. When a new commit is detected on `main`, the book is updated, built, and deployed.

The first production deployment should still be performed and verified manually before the timer is enabled.

---

## 2. Files in This Directory

```text
deployment/
├── README.md
├── scripts/
│   ├── check-publish-epac.sh
│   ├── deploy-epac.sh
│   └── publish-epac.sh
└── systemd/
    ├── oer-epac-publish.service
    └── oer-epac-publish.timer
```

### `scripts/check-publish-epac.sh`

Checks `origin/main` against the current local commit on `oer-build`.

Before fetching, it refuses to automate over any uncommitted local changes, matching the EPA608 production checker.

If the commits are identical, it exits without rebuilding:

```text
No new commit. Nothing to publish.
```

If a new commit is detected, it starts the complete publication process by executing:

```text
/srv/oer/bin/publish-epac.sh
```

### `scripts/publish-epac.sh`

Performs the complete publication sequence:

```text
verify repository
        |
        v
require clean working tree
        |
        v
require main branch
        |
        v
git fetch
        |
        v
git merge --ff-only origin/main
        |
        v
website/run.sh
        |
        v
deploy-epac.sh
```

The fast-forward-only merge prevents the deployment server from creating its own merge commit.

The script also refuses to publish if the server checkout contains uncommitted local changes.

### `scripts/deploy-epac.sh`

Copies the already generated `website/book/` tree to the dedicated production directory:

```text
/var/www/openengineeringbooks/epac/
```

using:

```bash
rsync -av --delete
```

The destination is dedicated to this book, so destination-scoped deletion is intentional: files removed from the generated book are also removed from the deployed copy.

> **Important:** Never change this destination to the shared `/var/www/openengineeringbooks/` root while keeping `--delete`.

The script uses a deployment lock at:

```text
/srv/oer/state/epac-deploy.lock
```

to reduce the risk of two deployments running at the same time.

### `systemd/oer-epac-publish.service`

A `oneshot` service that executes:

```text
/srv/oer/bin/check-publish-epac.sh
```

A successfully completed oneshot service normally returns to `inactive (dead)`. That is expected.

### `systemd/oer-epac-publish.timer`

Starts the checker shortly after boot and then approximately every five minutes.

---

## 3. Project-Specific Values

The EPA608 deployment model is preserved. The necessary MET406/EPAC substitutions are:

| Purpose | Electronic Packaging value |
| --- | --- |
| Repository checkout | `/srv/oer/fsc_epac` |
| Branch | `main` |
| Generated site | `/srv/oer/fsc_epac/website/book` |
| Public destination | `/var/www/openengineeringbooks/epac/` |
| Public URL | `https://openengineeringbooks.org/epac/` |
| SSH alias | `oer-web-deploy` |
| Infrastructure scripts | `/srv/oer/bin/*-epac.sh` |
| State directory | `/srv/oer/state` |
| Deployment lock | `/srv/oer/state/epac-deploy.lock` |
| systemd service | `oer-epac-publish.service` |
| systemd timer | `oer-epac-publish.timer` |

If the final repository checkout is intentionally given a different name on `oer-build`, update `/srv/oer/fsc_epac` consistently in this README and in the scripts before installation.

---

## 4. Required Build-Server Tools

On `oer-build`, the established workflow expects:

- Git
- Bash
- Python 3
- mdBook
- mdbook-katex
- rsync
- OpenSSH client
- systemd
- the existing SSH alias `oer-web-deploy`

Check the main commands:

```bash
git --version
mdbook --version
mdbook-katex --version
rsync --version
ssh -V
```

The website build itself is controlled by:

```text
/srv/oer/fsc_epac/website/run.sh
```

The deployment scripts do not duplicate the mdBook build logic.

---

## 5. SSH Deployment Connection

The book deployment uses the same builder-to-web-server SSH arrangement as EPA608:

```text
oer-build
    |
    | ssh alias: oer-web-deploy
    v
oer-web
```

The repository should not contain private keys, passwords, or other credentials.

Before deployment, verify the existing connection from `oer-build`:

```bash
ssh oer-web-deploy 'echo "SSH deployment connection OK"'
```

The expected result is:

```text
SSH deployment connection OK
```

---

## 6. Preparing the Dedicated Web Destination

The Electronic Packaging book must own its own dedicated production directory.

On `oer-web`, create it using the same ownership pattern as the EPA608 book:

```bash
install -d \
    -o oer-deploy \
    -g www-data \
    -m 0755 \
    /var/www/openengineeringbooks/epac
```

Verify from `oer-build`:

```bash
ssh oer-web-deploy \
    'test -w /var/www/openengineeringbooks/epac && echo "Destination is writable"'
```

The deployment script uses `rsync --delete`, so this path must remain dedicated to this book.

Do not use:

```text
/var/www/openengineeringbooks/
```

as the destination.

---

## 7. Restoring the Deployment Scripts From This Repository

The repository copies can be used to install or rebuild the deployment configuration on `oer-build`.

From `oer-build`:

```bash
cd /srv/oer/fsc_epac
```

Create the infrastructure script directory:

```bash
install -d -m 0755 /srv/oer/bin
```

Install the three scripts:

```bash
install -m 0755 \
    deployment/scripts/check-publish-epac.sh \
    /srv/oer/bin/check-publish-epac.sh

install -m 0755 \
    deployment/scripts/publish-epac.sh \
    /srv/oer/bin/publish-epac.sh

install -m 0755 \
    deployment/scripts/deploy-epac.sh \
    /srv/oer/bin/deploy-epac.sh
```

Check their shell syntax:

```bash
bash -n /srv/oer/bin/check-publish-epac.sh
bash -n /srv/oer/bin/publish-epac.sh
bash -n /srv/oer/bin/deploy-epac.sh
```

Remember:

> Editing the repository copies later does not automatically replace the installed `/srv/oer/bin/` copies.

Re-run the `install` commands whenever an installed deployment script is intentionally updated.

---

## 8. Test the Book Build Before Deployment

Before enabling automatic deployment, confirm that the book can be built independently:

```bash
cd /srv/oer/fsc_epac
./website/run.sh
```

A successful build should create:

```text
/srv/oer/fsc_epac/website/book/index.html
```

Verify:

```bash
test -f website/book/index.html && echo "Build OK"
```

The `website/run.sh` workflow handles source staging, Markdown preparation, navigation generation, and the mdBook build.

The deployment scripts intentionally do not duplicate that build logic.

---

## 9. Manual Deployment Commands

The three deployment scripts can also be run manually.

### Build only

```bash
cd /srv/oer/fsc_epac
./website/run.sh
```

This generates the site locally but does not copy it to `oer-web`.

### Deploy the existing build only

```bash
/srv/oer/bin/deploy-epac.sh
```

Use this when `website/book/` has already been built and only the generated files need to be copied to the web server.

This command does **not** update Git and does **not** rebuild the book.

### Complete manual publication

```bash
/srv/oer/bin/publish-epac.sh
```

This is the normal manual equivalent of an automatic publication:

```text
Git update -> mdBook build -> rsync deployment
```

### Check whether a new remote commit exists

```bash
/srv/oer/bin/check-publish-epac.sh
```

If no new commit exists, the expected result is:

```text
No new commit. Nothing to publish.
```

If a new commit exists, the script automatically starts the complete publication process.

---

## 10. Installing the systemd Automation

Copy the backed-up systemd files into the systemd unit directory:

```bash
install -m 0644 \
    /srv/oer/fsc_epac/deployment/systemd/oer-epac-publish.service \
    /etc/systemd/system/oer-epac-publish.service

install -m 0644 \
    /srv/oer/fsc_epac/deployment/systemd/oer-epac-publish.timer \
    /etc/systemd/system/oer-epac-publish.timer
```

Reload systemd:

```bash
systemctl daemon-reload
```

Before enabling the timer, run the service manually:

```bash
systemctl start oer-epac-publish.service
systemctl status oer-epac-publish.service --no-pager
```

Review its log:

```bash
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

A successful `Type=oneshot` service may show:

```text
inactive (dead)
```

after execution. That is normal.

After the manual service test succeeds:

```bash
systemctl enable --now oer-epac-publish.timer
```

Verify:

```bash
systemctl status oer-epac-publish.timer --no-pager
systemctl list-timers --all | grep epac
```

---

## 11. Normal Automatic Publishing Workflow

After the initial setup is complete, normal publication becomes:

```text
Development computer
        |
        | git add / commit / push
        v
Gitea origin/main
        |
        | timer runs
        v
check-publish-epac.sh
        |
        | new commit?
        v
publish-epac.sh
        |
        | fast-forward only
        v
website/run.sh
        |
        v
website/book/
        |
        v
deploy-epac.sh
        |
        | rsync --delete over SSH
        v
/var/www/openengineeringbooks/epac/
        |
        v
https://openengineeringbooks.org/epac/
```

If there is no new remote commit, the checker exits without rebuilding.

---

## 12. Deployment Status and Logs

### systemd service log

The primary automatic-publication log is the systemd journal:

```bash
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

Follow it live:

```bash
journalctl -fu oer-epac-publish.service
```

### Timer status

```bash
systemctl status oer-epac-publish.timer --no-pager
systemctl list-timers --all | grep epac
```

### Repository status

```bash
cd /srv/oer/fsc_epac
git status
git branch --show-current
git log -1 --oneline
git fetch origin main
git rev-parse HEAD
git rev-parse origin/main
```

### Build output

```bash
test -f /srv/oer/fsc_epac/website/book/index.html \
    && echo "Local generated index exists"
```

### Deployed output

```bash
ssh oer-web-deploy \
    'test -f /var/www/openengineeringbooks/epac/index.html && echo "Remote index exists"'
```

---

## 13. Troubleshooting

### Repository contains local changes

The publisher intentionally stops if:

```bash
git status --porcelain
```

is nonempty.

Inspect the server checkout rather than forcing a pull:

```bash
cd /srv/oer/fsc_epac
git status
```

The deployment checkout should normally contain no locally edited source files.

### Wrong branch

Check:

```bash
git branch --show-current
```

Expected:

```text
main
```

### Build failure

Run the website pipeline manually:

```bash
cd /srv/oer/fsc_epac
./website/run.sh
```

Fix the source/build problem before deploying.

A failed build should not replace the existing public website.

### Deployment lock exists

The deployer refuses to run if:

```text
/srv/oer/state/epac-deploy.lock
```

already exists.

First verify that another deployment is not actually running.

Only after confirming that the lock is stale should it be removed:

```bash
rmdir /srv/oer/state/epac-deploy.lock
```

### SSH problem

Test:

```bash
ssh oer-web-deploy 'echo OK'
```

### Destination problem

Test:

```bash
ssh oer-web-deploy \
    'ls -ld /var/www/openengineeringbooks/epac && test -w /var/www/openengineeringbooks/epac'
```

### systemd service failure

```bash
systemctl status oer-epac-publish.service --no-pager
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

### Timer not running

```bash
systemctl status oer-epac-publish.timer --no-pager
systemctl list-timers --all | grep epac
```

---

## 14. Recovery / Reinstallation

If the active deployment scripts on `oer-build` are lost or damaged:

```bash
cd /srv/oer/fsc_epac
```

Reinstall them from the repository copies:

```bash
install -d -m 0755 /srv/oer/bin

install -m 0755 \
    deployment/scripts/check-publish-epac.sh \
    /srv/oer/bin/check-publish-epac.sh

install -m 0755 \
    deployment/scripts/publish-epac.sh \
    /srv/oer/bin/publish-epac.sh

install -m 0755 \
    deployment/scripts/deploy-epac.sh \
    /srv/oer/bin/deploy-epac.sh
```

Restore the systemd files:

```bash
install -m 0644 \
    deployment/systemd/oer-epac-publish.service \
    /etc/systemd/system/oer-epac-publish.service

install -m 0644 \
    deployment/systemd/oer-epac-publish.timer \
    /etc/systemd/system/oer-epac-publish.timer

systemctl daemon-reload
```

Test manually before enabling automatic publication again.

---

## 15. Initial Production Deployment Checklist

For a new Electronic Packaging deployment, use the same conservative sequence used by the EPA608 workflow:

1. Push the current `main` branch to Gitea.
2. Clone the repository on `oer-build` as `/srv/oer/fsc_epac`.
3. Verify a clean `main` checkout.
4. Run `./website/run.sh`.
5. Confirm `website/book/index.html`.
6. Create `/var/www/openengineeringbooks/epac/` on `oer-web`.
7. Verify the `oer-web-deploy` SSH connection.
8. Verify the destination is writable.
9. Install the deployment scripts into `/srv/oer/bin/`.
10. Run `deploy-epac.sh` manually.
11. Open `https://openengineeringbooks.org/epac/` and inspect the rendered book.
12. Run `publish-epac.sh` manually.
13. Install the systemd service and timer.
14. Start the service manually and inspect the journal.
15. Enable the timer only after all manual tests succeed.
16. Make a harmless test commit, push it, and verify that the timer publishes it automatically.

---

## 16. Security and Repository Boundaries

Do not commit:

- private SSH keys;
- passwords;
- API tokens;
- Cloudflare credentials;
- server secrets;
- `authorized_keys`;
- other private infrastructure credentials.

The deployment package contains only scripts, unit files, and documentation.

The book owns only:

```text
/var/www/openengineeringbooks/epac/
```

It must not mirror or delete the shared:

```text
/var/www/openengineeringbooks/
```

root.

---

## 17. Current Project Status

This deployment package is prepared for the in-progress Electronic Packaging Applications book.

At the time this package was created:

- the book is intentionally being published while development continues;
- Chapter 1 has reached its current development/QA milestone;
- later chapters can be added through normal Git commits;
- the same deployment workflow will automatically rebuild and publish them after they are committed to `main`.

Publishing an in-progress edition does not change the source-of-truth rule: authoritative Markdown remains in the repository, while `website/src/` and `website/book/` remain generated build outputs.
