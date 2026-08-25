// ==UserScript==
// @name         npm-change-install-cmd
// @version      1.0
// @description         A script to remove YouTube ads, including static ads and video ads, without interfering with the network and ensuring safety.
// @match        *://*.npmjs.com/*
// @grant        none
// @license MIT
// ==/UserScript==

(function () {
  const interval = setInterval(() => {
    const el = document.querySelector(".a9150b94 code");
    if (el) {
      el.textContent = el.textContent.replace("npm i", "pnpm add");
      clearInterval(interval);
    }
  }, 50);
})();
