const menuToggle = document.getElementById('menu-toggle');
const menu = document.getElementById('menu');

menuToggle.addEventListener('click', () => {
    menu.classList.toggle('hidden'); 
});

document.addEventListener("DOMContentLoaded", () => {
    const lastModifiedElement = document.getElementById("last-modified");
    const lastModified = new Date(document.lastModified);
    lastModifiedElement.textContent = lastModified.toLocaleString("fr-FR", {
        day: "2-digit",
        month: "long",
        year: "numeric",
        hour: "2-digit",
        minute: "2-digit"
    });
});