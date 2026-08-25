// ==UserScript==
// @name         youtube-timestamps-auto-click
// @version      1.0
// @match        https://*.youtube.com/watch*
// @grant        none
// @license MIT
// ==/UserScript==

(function () {
  const interval = setInterval(() => {
    const timestampsButton = document.querySelector(
      "#movie_player > div.ytp-chrome-bottom > div.ytp-chrome-controls > div.ytp-left-controls > div:nth-child(6) > button",
    );

    if (timestampsButton && !timestampsButton.hasAttribute("disabled")) {
      timestampsButton.click();
      clearInterval(interval);
    }
  }, 50);
  setTimeout(() => clearInterval(interval), 5000);
})();
