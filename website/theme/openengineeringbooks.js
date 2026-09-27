(function () {
    const printButton = document.getElementById("print-button");

    if (!printButton) {
        return;
    }

    const printLink = printButton.closest("a");
    if (!printLink) {
        return;
    }

    // mdBook's default print button opens print.html, which contains the
    // entire book. OpenEngineeringBooks prints only the currently displayed
    // section/page instead.
    if (!printLink.dataset.oebSectionPrintBound) {
        printLink.dataset.oebSectionPrintBound = "true";
        printLink.title = "Print this section";
        printLink.setAttribute("aria-label", "Print this section");

        printLink.addEventListener("click", function (event) {
            event.preventDefault();
            window.print();
        });
    }

    // Add a link back to the OpenEngineeringBooks home page next to Print.
    if (document.getElementById("oeb-home-button")) {
        return;
    }

    const homeLink = document.createElement("a");
    homeLink.href = "https://openengineeringbooks.org/";
    homeLink.title = "OpenEngineeringBooks.org Home";
    homeLink.setAttribute(
        "aria-label",
        "Return to OpenEngineeringBooks.org home"
    );

    homeLink.innerHTML = `
        <span class="fa-svg" id="oeb-home-button">
            <svg xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 576 512"
                aria-hidden="true">
                <path d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2
                c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456
                c-1.1 0-2.2 0-3.3-.1-1.4.1-2.8.1-4.2.1H392
                c-22.1 0-40-17.9-40-40v-88c0-17.7-14.3-32-32-32h-64
                c-17.7 0-32 14.3-32 32v88c0 22.1-17.9 40-40 40h-55.9
                c-1.5 0-3-.1-4.5-.2-1.2.1-2.4.2-3.6.2h-16
                c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9.1-2.8v-69.7H32
                c-18 0-32-14-32-32.1 0-9 3-17 10-24L266.4 8
                c7-6 15-8 22-8s15 1 22 7l255.4 224.5
                c8 7 12 15 10 24z"/>
            </svg>
        </span>
    `;

    printLink.parentNode.insertBefore(homeLink, printLink);
})();


/* -------------------------------------------------------------------------
   Discourage casual downloading of textbook figures
   ------------------------------------------------------------------------- */

/*
 * Limit this behavior to images inside the actual book content. This leaves
 * mdBook controls, navigation icons, and other interface elements untouched.
 *
 * This is intentionally a deterrent rather than "security": a browser must
 * receive an image in order to display it, so determined users can still
 * obtain it through developer tools, cache inspection, screenshots, etc.
 */
document.addEventListener("contextmenu", function (event) {
    const target = event.target;

    if (
        target instanceof Element &&
        target.closest("#mdbook-content main img")
    ) {
        event.preventDefault();
    }
});

document.addEventListener("dragstart", function (event) {
    const target = event.target;

    if (
        target instanceof Element &&
        target.closest("#mdbook-content main img")
    ) {
        event.preventDefault();
    }
});
