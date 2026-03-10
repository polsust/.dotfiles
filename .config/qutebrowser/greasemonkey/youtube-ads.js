// ==UserScript==
// for more updated scripts, see: https://greasyfork.org/en/scripts/by-site/youtube.com
// @name         Auto Skip YouTube Ads
// @version      1.1.0
// @description  Speed up and skip YouTube ads automatically
// @author       jso8910 and others
// @match        *://*.youtube.com/*
// ==/UserScript==

document.addEventListener(
  "load",
  () => {
    // const btn = document.querySelector(
    //   ".videoAdUiSkipButton,.ytp-ad-skip-button-modern",
    // );
    // if (btn) {
    //   btn.click();
    // }
    const ad = [...document.querySelectorAll(".ad-showing")][0];

    if (ad) {
      const video = document.querySelector("video");
      const currentTime = Math.floor(video.currentTime);
      if (currentTime > 0) {
        const url = new URL(window.location.href);
        url.searchParams.set("t", currentTime.toString());
        window.history.replaceState({}, "", url);
      }

      // location.reload();
    }
  },
  true,
);
