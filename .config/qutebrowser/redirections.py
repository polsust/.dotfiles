from qutebrowser.api import config


def redirect_youtube(url):
    if url.host() == "www.youtube.com" or url.host() == "youtube.com":
        if url.path() == "/" or url.path() == "":
            url.setPath("/feed/subscriptions")
    return url


config.url.interceptors.append(redirect_youtube)
