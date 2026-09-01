(function () {
    const printButton = document.getElementById("print-button");

    if (!printButton || document.getElementById("oeb-home-button")) {
        return;
    }

    const printLink = printButton.closest("a");
    if (!printLink) {
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
