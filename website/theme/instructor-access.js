(() => {
    "use strict";

    const AAD = new TextEncoder().encode("OpenEngineeringBooks instructor content v1");
    const blocks = Array.from(document.querySelectorAll(".oer-instructor-protected"));

    if (blocks.length === 0) {
        return;
    }

    // mdBook's print.html contains every chapter, including protected blocks.
    // Do not auto-open the instructor dialog on the print view; leave the
    // protected block locked there unless the user explicitly clicks Unlock.
    const isPrintPage = /(?:^|\/)print\.html$/.test(location.pathname);

    const decodeBase64Url = (value) => {
        const padded = value.replace(/-/g, "+").replace(/_/g, "/") + "===".slice((value.length + 3) % 4);
        const binary = atob(padded);
        const bytes = new Uint8Array(binary.length);
        for (let i = 0; i < binary.length; i += 1) {
            bytes[i] = binary.charCodeAt(i);
        }
        return bytes;
    };

    const deriveKey = async (password, salt, iterations) => {
        const material = await crypto.subtle.importKey(
            "raw",
            new TextEncoder().encode(password),
            "PBKDF2",
            false,
            ["deriveKey"]
        );

        return crypto.subtle.deriveKey(
            {
                name: "PBKDF2",
                salt,
                iterations,
                hash: "SHA-256",
            },
            material,
            { name: "AES-GCM", length: 256 },
            false,
            ["decrypt"]
        );
    };

    const decryptBlock = async (block, password) => {
        const iterations = Number.parseInt(block.dataset.oerIterations, 10);
        if (!Number.isFinite(iterations) || iterations < 100000) {
            throw new Error("Invalid protected-content parameters.");
        }

        const salt = decodeBase64Url(block.dataset.oerSalt || "");
        const iv = decodeBase64Url(block.dataset.oerIv || "");
        const ciphertext = decodeBase64Url(block.dataset.oerCiphertext || "");
        const key = await deriveKey(password, salt, iterations);

        const plaintext = await crypto.subtle.decrypt(
            {
                name: "AES-GCM",
                iv,
                additionalData: AAD,
            },
            key,
            ciphertext
        );

        return new TextDecoder().decode(plaintext);
    };

    const revealAll = async (password) => {
        const decrypted = [];
        for (const block of blocks) {
            decrypted.push(await decryptBlock(block, password));
        }

        blocks.forEach((block, index) => {
            const locked = block.querySelector(".oer-instructor-locked");
            const content = block.querySelector(".oer-instructor-content");
            content.innerHTML = decrypted[index];
            content.hidden = false;
            if (locked) {
                locked.hidden = true;
            }
            block.classList.add("oer-instructor-unlocked");

            if (window.hljs && typeof window.hljs.highlightElement === "function") {
                content.querySelectorAll("pre code").forEach((code) => {
                    try {
                        window.hljs.highlightElement(code);
                    } catch (_) {
                        // Highlighting is cosmetic; decrypted content is already usable.
                    }
                });
            }
        });
    };

    const makeModal = () => {
        const overlay = document.createElement("div");
        overlay.className = "oer-instructor-modal-overlay";
        overlay.hidden = true;
        overlay.innerHTML = `
            <div class="oer-instructor-modal" role="dialog" aria-modal="true" aria-labelledby="oer-instructor-modal-title">
                <button type="button" class="oer-instructor-modal-close" aria-label="Close instructor access dialog">×</button>
                <h2 id="oer-instructor-modal-title">Instructor Access</h2>
                <p>This content is restricted to instructors.</p>
                <label for="oer-instructor-access-code">Access code</label>
                <input id="oer-instructor-access-code" type="password" autocomplete="current-password" spellcheck="false">
                <p class="oer-instructor-modal-error" role="alert" hidden>Incorrect access code.</p>
                <div class="oer-instructor-modal-actions">
                    <button type="button" class="oer-instructor-submit">Unlock</button>
                </div>
            </div>`;
        document.body.appendChild(overlay);

        const input = overlay.querySelector("#oer-instructor-access-code");
        const submit = overlay.querySelector(".oer-instructor-submit");
        const close = overlay.querySelector(".oer-instructor-modal-close");
        const error = overlay.querySelector(".oer-instructor-modal-error");

        const open = () => {
            error.hidden = true;
            overlay.hidden = false;
            input.focus();
        };

        const hide = () => {
            overlay.hidden = true;
            input.value = "";
            error.hidden = true;
        };

        const attempt = async () => {
            const password = input.value;
            if (!password) {
                error.textContent = "Enter the instructor access code.";
                error.hidden = false;
                input.focus();
                return;
            }

            submit.disabled = true;
            error.hidden = true;
            try {
                await revealAll(password);
                hide();
            } catch (_) {
                error.textContent = "Incorrect access code.";
                error.hidden = false;
                input.select();
            } finally {
                submit.disabled = false;
            }
        };

        submit.addEventListener("click", attempt);
        input.addEventListener("keydown", (event) => {
            if (event.key === "Enter") {
                event.preventDefault();
                attempt();
            }
        });
        close.addEventListener("click", hide);
        overlay.addEventListener("click", (event) => {
            if (event.target === overlay) {
                hide();
            }
        });
        document.addEventListener("keydown", (event) => {
            if (event.key === "Escape" && !overlay.hidden) {
                hide();
            }
        });

        return { open };
    };

    const initialize = async () => {
        if (!window.crypto || !window.crypto.subtle) {
            blocks.forEach((block) => {
                const locked = block.querySelector(".oer-instructor-locked");
                if (locked) {
                    locked.innerHTML = "<p><strong>Instructor access is unavailable in this browser.</strong></p><p>Use a current browser over HTTPS.</p>";
                }
            });
            return;
        }

        const modal = makeModal();
        document.querySelectorAll(".oer-instructor-unlock-button").forEach((button) => {
            button.addEventListener("click", modal.open);
        });

        // Opening an individual protected page prompts automatically. The
        // combined mdBook print view stays locked without interrupting users.
        if (!isPrintPage) {
            modal.open();
        }
    };

    initialize();
})();
