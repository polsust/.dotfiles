// ==UserScript==
// @name         youtube-mpv-button
// @version      1.0
// @match        https://*.youtube.com/watch*
// @grant        none
// @license MIT
// ==/UserScript==

(function () {
  const interval = setInterval(() => {
    const menu = document.querySelector("#menu > ytd-menu-renderer");

    if (!menu) return;

    const button = document.createElement("button");
    button.style.all = "unset";

    button.style.cursor = "pointer";
    button.textContent = "MPV";
    button.style.marginRight = "8px";
    button.style.borderRadius = "50px";
    button.style.backgroundColor = "#393839";
    button.style.color = "#ffffff";
    button.style.padding = "0px 15px";

    button.onclick = () => {
      console.log("clicked");
    };

    menu.prepend(button);

    clearInterval(interval);
  }, 50);
})();
