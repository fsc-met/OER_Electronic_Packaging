# EPAC Deployment Procedure

This document records the initial deployment procedure for the **Electronic Packaging Applications (EPAC)** project to **OpenEngineeringBooks.org**.

The procedure follows the same deployment architecture used by the EPA608 project:

```text
Development computer
        |
        | git push
        v
Gitea: wenhai/fsc_epac
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

The repository checkout on `oer-build` is:

```text
/srv/oer/fsc_epac
```

The public website destination on `oer-web` is:

```text
/var/www/openengineeringbooks/epac/
```

The public URL is:

```text
https://openengineeringbooks.org/epac/
```

The deployment scripts in the repository are expected to use `/srv/oer/fsc_epac`.

---

## Step 0 - Prerequisites

Complete these checks before making any deployment changes.

### 0.1 Confirm administrator SSH access to both servers

From the computer used to administer the OpenEngineeringBooks servers:

```bash
ssh oer-build
```

Confirm that the connection succeeds, then exit:

```bash
exit
```

Test the web server:

```bash
ssh oer-web
```

Confirm that the connection succeeds, then exit:

```bash
exit
```

Do not continue until both SSH connections work.

### 0.2 Add `oer-build` as a collaborator in Gitea

In Gitea:

1. Open the repository:

   ```text
   wenhai/fsc_epac
   ```

2. Open the repository collaboration/access settings.
3. Add the Gitea account:

   ```text
   oer-build
   ```

   as a collaborator with sufficient permission to clone and pull the repository.

This must be completed before cloning the repository on `oer-build`.

### 0.3 Confirm the Gitea SSH alias from `oer-build`

Connect to the build server:

```bash
ssh oer-build
```

Test the existing Gitea SSH configuration:

```bash
ssh -T gitea
```

The exact success message depends on the Gitea configuration, but the connection should authenticate without asking for the `git` account password.

If this fails, fix the existing `gitea` SSH alias/key configuration before continuing.

### 0.4 Confirm build-server tools

On `oer-build`:

```bash
git --version
mdbook --version
mdbook-katex --version
rsync --version
ssh -V
```

All required tools should be available before the first production build.

---

## Step 1 - Prepare and Push the Current Project to Gitea

On the development computer, from the local `fsc_epac` repository:

```bash
git status
git branch --show-current
git remote -v
```

Confirm:

- the branch is `main`;
- `origin` points to the correct `fsc_epac` Gitea repository;
- the intended project files are present;
- `website/src/` and `website/book/` are not being committed as generated output.

Stage and review the current project:

```bash
git add .
git status
```

Commit:

```bash
git commit -m "Prepare EPAC for OpenEngineeringBooks deployment"
```

Push:

```bash
git push origin main
```

Verify:

```bash
git status
```

The local working tree should be clean and up to date with `origin/main`.

---

## Step 2 - Clone the Repository on `oer-build`

Connect to the build server:

```bash
ssh oer-build
```

Confirm that the target directory does not already contain an unintended or incomplete checkout:

```bash
ls -ld /srv/oer/fsc_epac 2>/dev/null || true
```

If `/srv/oer/fsc_epac` does not exist, clone the repository using the existing Gitea SSH alias:

```bash
git clone \
    gitea:wenhai/fsc_epac.git \
    /srv/oer/fsc_epac
```

Then:

```bash
cd /srv/oer/fsc_epac
```

Verify the checkout:

```bash
git status
git branch --show-current
git remote -v
git log -1 --oneline
```

Expected conditions:

```text
Branch: main
Working tree: clean
Repository: wenhai/fsc_epac
Checkout: /srv/oer/fsc_epac
```

If the repository already exists from an earlier setup, do not reclone it. Instead inspect it first:

```bash
cd /srv/oer/fsc_epac
git status
git branch --show-current
git remote -v
```

---

## Step 3 - Verify the Website Configuration

On `oer-build`:

```bash
cd /srv/oer/fsc_epac
```

Check the website scripts:

```bash
ls -l website/run.sh
ls -l website/helper/*.sh
```

If executable permissions were not preserved:

```bash
chmod +x website/run.sh
chmod +x website/helper/*.sh
```

Confirm the EPAC deployment path in `book.toml`:

```bash
grep -n "site-url" website/book.toml
```

Expected:

```text
site-url = "/epac/"
```

Confirm that in-page headings are disabled in the sidebar:

```bash
grep -n "sidebar-header-nav" website/book.toml
```

Expected:

```text
sidebar-header-nav = false
```

---

## Step 4 - Build the Site on `oer-build`

From:

```bash
cd /srv/oer/fsc_epac
```

run:

```bash
./website/run.sh
```

Do not deploy if the build fails.

After a successful build, verify:

```bash
test -f website/book/index.html && echo "EPAC build OK"
```

Check the generated site:

```bash
ls -lh website/book/index.html
```

Check the generated chapter navigation:

```bash
grep '^# Chapter' website/src/SUMMARY.md
```

For the current in-progress release, Chapter 1 should appear.

Optional full navigation review:

```bash
cat website/src/SUMMARY.md
```

Do not manually edit `website/src/` or `website/book/`. They are generated build outputs.

---

## Step 5 - Create the EPAC Web Destination on `oer-web`

From the administrator computer:

```bash
ssh oer-web
```

Inspect the existing OpenEngineeringBooks web root and EPA608 directory:

```bash
ls -ld /var/www/openengineeringbooks
ls -ld /var/www/openengineeringbooks/epa608
```

Create the dedicated EPAC directory using the same ownership pattern:

```bash
install -d \
    -o oer-deploy \
    -g www-data \
    -m 0755 \
    /var/www/openengineeringbooks/epac
```

Verify:

```bash
ls -ld /var/www/openengineeringbooks/epac
```

Then exit:

```bash
exit
```

The EPAC deployment destination must remain:

```text
/var/www/openengineeringbooks/epac/
```

Do **not** use the shared directory:

```text
/var/www/openengineeringbooks/
```

as an `rsync --delete` destination.

---

## Step 6 - Verify the Build-to-Web Deployment Connection

Connect to the build server:

```bash
ssh oer-build
```

The deployment scripts use the established deployment SSH alias:

```text
oer-web-deploy
```

Test it:

```bash
ssh oer-web-deploy 'echo "SSH deployment connection OK"'
```

Verify the EPAC destination exists:

```bash
ssh oer-web-deploy \
    'ls -ld /var/www/openengineeringbooks/epac'
```

Verify it is writable by the deployment account:

```bash
ssh oer-web-deploy \
    'test -w /var/www/openengineeringbooks/epac && echo "EPAC destination writable"'
```

Do not continue until these tests succeed.

---

## Step 7 - Perform the First Deployment Manually

The first production deployment should be performed manually before automatic publishing is enabled.

On `oer-build`:

```bash
cd /srv/oer/fsc_epac
```

Confirm the generated site exists:

```bash
test -f website/book/index.html && echo "Local EPAC index OK"
```

Deploy the generated site:

```bash
rsync -av --delete \
    website/book/ \
    oer-web-deploy:/var/www/openengineeringbooks/epac/
```

Carefully verify that the destination is exactly:

```text
/var/www/openengineeringbooks/epac/
```

After the copy completes:

```bash
ssh oer-web-deploy \
    'test -f /var/www/openengineeringbooks/epac/index.html && echo "Remote EPAC index OK"'
```

---

## Step 8 - Verify the Public Site

Open:

```text
https://openengineeringbooks.org/epac/
```

Verify at least the following:

- the landing page loads;
- Chapter 1 appears in the left navigation;
- opening a page does not add that page's internal headings/subheadings to the left navigation;
- figures load;
- KaTeX equations render correctly;
- the OpenEngineeringBooks home button matches the EPA608 book in appearance and position;
- the Print button works;
- Credits loads;
- Disclaimer loads;
- License loads;
- Revision History loads;
- previous/next page navigation works;
- no EPAC page unexpectedly points to `/epa608/`.

If the remote `index.html` exists but the public URL returns `404`, stop and inspect the Nginx configuration before changing deployment scripts.

---

## Step 9 - Install the EPAC Deployment Scripts on `oer-build`

The repository contains the backed-up/reference copies under:

```text
/srv/oer/fsc_epac/deployment/scripts/
```

The active infrastructure copies are installed under:

```text
/srv/oer/bin/
```

On `oer-build`:

```bash
install -d -m 0755 /srv/oer/bin
```

Install the scripts:

```bash
install -m 0755 \
    /srv/oer/fsc_epac/deployment/scripts/check-publish-epac.sh \
    /srv/oer/bin/check-publish-epac.sh

install -m 0755 \
    /srv/oer/fsc_epac/deployment/scripts/publish-epac.sh \
    /srv/oer/bin/publish-epac.sh

install -m 0755 \
    /srv/oer/fsc_epac/deployment/scripts/deploy-epac.sh \
    /srv/oer/bin/deploy-epac.sh
```

Check the installed scripts:

```bash
bash -n /srv/oer/bin/check-publish-epac.sh
bash -n /srv/oer/bin/publish-epac.sh
bash -n /srv/oer/bin/deploy-epac.sh
```

No output means the Bash syntax checks passed.

The three repository scripts should already contain:

```text
/srv/oer/fsc_epac
```

as the repository path.

---

## Step 10 - Test the Installed Deployment Scripts Manually

### 10.1 Test deployment only

Because the book has already been built:

```bash
/srv/oer/bin/deploy-epac.sh
```

This should redeploy the existing `website/book/` output and verify the remote `index.html`.

### 10.2 Test the complete publication process

First:

```bash
cd /srv/oer/fsc_epac
git status
git branch --show-current
```

The repository must be clean and on `main`.

Run:

```bash
/srv/oer/bin/publish-epac.sh
```

This tests:

```text
Git update
    ->
website/run.sh
    ->
deploy-epac.sh
```

### 10.3 Test the remote-commit checker

Run:

```bash
/srv/oer/bin/check-publish-epac.sh
```

If the local checkout already matches `origin/main`, the expected result is:

```text
No new commit. Nothing to publish.
```

Do not continue to systemd automation until all three manual tests succeed.

---

## Step 11 - Install the systemd Service and Timer

The repository reference files are:

```text
/srv/oer/fsc_epac/deployment/systemd/oer-epac-publish.service
/srv/oer/fsc_epac/deployment/systemd/oer-epac-publish.timer
```

Install them:

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

Do **not** enable the timer yet.

---

## Step 12 - Test the systemd Service Manually

Run:

```bash
systemctl start oer-epac-publish.service
```

Check:

```bash
systemctl status oer-epac-publish.service --no-pager
```

Review the log:

```bash
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

The service is `Type=oneshot`, so after a successful execution it may show:

```text
inactive (dead)
```

This is normal for a completed oneshot service.

The important checks are:

- no execution failure;
- no repository error;
- no build error;
- no deployment error.

---

## Step 13 - Enable Automatic Publishing

Only after the manual service test succeeds:

```bash
systemctl enable --now oer-epac-publish.timer
```

Verify:

```bash
systemctl status oer-epac-publish.timer --no-pager
```

and:

```bash
systemctl list-timers --all | grep epac
```

The current timer follows the EPA608 model and checks for updates periodically.

---

## Step 14 - Perform an End-to-End Automatic Publishing Test

On the development computer, make a harmless visible change, for example in:

```text
REVISION_HISTORY.md
```

Commit and push:

```bash
git add REVISION_HISTORY.md
git commit -m "Test EPAC automatic publication"
git push origin main
```

Do **not** manually pull the change on `oer-build`.

Wait for the EPAC timer to run.

Then on `oer-build`:

```bash
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

Confirm that the service:

1. detected a new commit;
2. fast-forwarded the local repository;
3. rebuilt the site;
4. deployed the generated site.

Check the repository:

```bash
cd /srv/oer/fsc_epac

git log -1 --oneline
git rev-parse HEAD
git rev-parse origin/main
```

`HEAD` and `origin/main` should match.

Finally verify the test change at:

```text
https://openengineeringbooks.org/epac/
```

---

## Step 15 - Normal Publishing Workflow After Setup

Once the automatic deployment has been verified, normal publication requires only the usual Git workflow on the development computer:

```bash
git add .
git commit -m "Update EPAC content"
git push origin main
```

The production chain becomes:

```text
Development computer
        |
        | git push
        v
Gitea: wenhai/fsc_epac
        |
        | timer checks origin/main
        v
oer-build
  /srv/oer/fsc_epac
        |
        | check-publish-epac.sh
        v
  publish-epac.sh
        |
        | git merge --ff-only
        | website/run.sh
        v
  website/book/
        |
        | deploy-epac.sh
        | rsync --delete
        v
oer-web
  /var/www/openengineeringbooks/epac/
        |
        v
https://openengineeringbooks.org/epac/
```

---

## Important Operating Rules

1. The Git repository is the source of truth.
2. Do not manually edit `/srv/oer/fsc_epac` on the build server.
3. Do not manually edit `website/src/` or `website/book/`.
4. Do not manually edit `/var/www/openengineeringbooks/epac/`.
5. Keep the public destination dedicated to EPAC because deployment uses `rsync --delete`.
6. Do not change the destination to `/var/www/openengineeringbooks/`.
7. Repository copies of deployment scripts are documentation/backup copies. The active copies run from `/srv/oer/bin/`.
8. If a repository deployment script is intentionally changed, reinstall the corresponding `/srv/oer/bin/` copy.
9. Keep the build server checkout clean and on `main`.
10. A failed build should never be followed by a deployment of incomplete output.

---

## Useful Status Commands

### Repository

```bash
ssh oer-build

cd /srv/oer/fsc_epac

git status
git branch --show-current
git log -1 --oneline
git fetch origin main
git rev-parse HEAD
git rev-parse origin/main
```

### Local generated book

```bash
test -f /srv/oer/fsc_epac/website/book/index.html \
    && echo "Local generated index exists"
```

### Remote deployed book

```bash
ssh oer-build

ssh oer-web-deploy \
    'test -f /var/www/openengineeringbooks/epac/index.html && echo "Remote index exists"'
```

### Automatic publishing service

```bash
ssh oer-build

systemctl status oer-epac-publish.service --no-pager
journalctl -u oer-epac-publish.service -n 100 --no-pager
```

### Automatic publishing timer

```bash
systemctl status oer-epac-publish.timer --no-pager
systemctl list-timers --all | grep epac
```

### Public site

```text
https://openengineeringbooks.org/epac/
```
