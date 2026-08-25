import os
from urllib.request import urlopen

# import redirections

# load your autoc, use this, if the rest of your config is empty!
config.load_autoconfig(True)

config.set("colors.webpage.preferred_color_scheme", "dark")
config.set("content.autoplay", True)
config.set("content.blocking.method", "both")

config.set("tabs.pinned.frozen", False)

config.bind("<alt-a>", "config-cycle colors.webpage.darkmode.enabled")


if not os.path.exists(config.configdir / "theme.py"):
    theme = "https://raw.githubusercontent.com/catppuccin/qutebrowser/main/setup.py"
    with urlopen(theme) as themehtml:
        with open(config.configdir / "theme.py", "a") as file:
            file.writelines(themehtml.read().decode("utf-8"))

if os.path.exists(config.configdir / "theme.py"):
    import theme

    theme.setup(c, "mocha", True)


config.bind("<Ctrl-l>", "forward")
config.bind("<Ctrl-h>", "back")

config.bind("<Ctrl-k>", "completion-item-focus prev", mode="command")
config.bind("<Ctrl-j>", "completion-item-focus next", mode="command")

# config.bind("<Space>c", "tab-close")

config.bind("J", "tab-prev")
config.bind("K", "tab-next")
config.bind("H", "tab-prev")
config.bind("L", "tab-next")
config.bind("D", "tab-give")


# devtools
config.bind("<w><f>", "devtools-focus")

# fix scrolling (sometimes doesn't work on default settings)
config.bind("<Ctrl-u>", "scroll page-up")
config.bind("<Ctrl-d>", "scroll page-down")
config.bind("gg", "scroll top")
config.bind("G", "scroll bottom")

config.bind("pp", "open -t -- {clipboard}")

config.bind("<alt-r>", "message-info 'Config reloaded' ;; config-source")

config.bind("cm", "clear-messages")

# config.bind("<Ctrl-4>", "tab-focus 4")


for i in range(1, 8):
    config.bind(f"<Ctrl-{i}>", f"tab-select {i}")


config.bind("<Ctrl-9>", "tab-focus -1")

config.bind("<Ctrl-o>", "tab-focus stack-prev")
config.bind("<Ctrl-i>", "tab-focus stack-next")

config.bind("<", "tab-move -")
config.bind(">", "tab-move +")


config.bind(
    "gM",
    "hint links userscript view_youtube_in_mpv",
)
config.bind(
    "gm",
    "spawn --userscript view_youtube_in_mpv",
)

config.bind(
    "gf",
    "spawn google-chrome-stable {url}",
)

config.bind("<z><l>", "spawn --userscript qute-pass-custom")
config.bind("<z><u><l>", "spawn --userscript qute-pass-custom --username-only")
config.bind("<z><p><l>", "spawn --userscript qute-pass-custom --password-only")
config.bind("<z><o><l>", "spawn --userscript qute-pass-custom --otp-only")

config.bind("sd", "spawn --userscript open_download")


config.bind("ge", "edit-url")
c.editor.command = [
    "kitty",
    "-T",
    "float",
    "-e",
    "nvim",
    "{file}",
    "-c",
    "normal {line}G{column0}l",
    "-c",
    "set wrap",
    "-c" "set ft=urlshortcut",
]


config.bind("gcc", "open -t https://chat.openai.com/?q={url}")
config.bind("gcs", "spawn --userscript summarize")
config.bind("gcl", "spawn --userscript git_clone")

config.bind(
    "gyc", "open -t https://www.commentshark.com/youtube-comment-searcher?{url:query}"
)
config.bind("gyt", "spawn --userscript show-youtube-transcript")


config.bind("gs", "spawn --userscript tts")

config.bind("gp", "spawn --userscript qute-send-url-to-telegram")

config.bind(
    "gh",
    "jseval --quiet --file ~/.config/qutebrowser/userscripts/toggle-input-password.js",
)

c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "@reddit": "https://duckduckgo.com/?q=site:reddit.com+{}",
    "@github": "https://duckduckgo.com/?q=site:github.com+{}",
    "@google": "https://www.google.com/search?q={}",
    "@youtube": "https://www.youtube.com/search?q={}",
    "@maps": "https://www.google.es/maps/search/{}",
    "@chatgpt": "https://chat.openai.com/?q={}",
    "@amazon": "https://www.amazon.es/s?k={}",
    "@wallapop": "https://es.wallapop.com/search?keywords={}",
    "@translate": "https://translate.google.com/?sl=auto&tl=en&op=translate&text={}",
    "@urban": "https://www.urbandictionary.com/define.php?term={}",
    "@trends": "https://trends.google.com/explore?q={}&date=today%205-y&geo=Worldwide",
    "@protondb": "https://www.protondb.com/search?q={}",
}

c.fonts.default_size = "12pt"

c.content.blocking.whitelist = [
    "youtube.com",
    "play.hosting",
    "vimm.net",
]

c.content.javascript.clipboard = "access-paste"

c.auto_save.session = True

c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://easylist-downloads.adblockplus.org/easylistdutch.txt",
    "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
    "https://www.i-dont-care-about-cookies.eu/abp/",
    "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
]

c.content.user_stylesheets = [
    "~/.config/qutebrowser/styles/chess-com.css",
    "~/.config/qutebrowser/styles/youtube.css",
]

c.fileselect.folder.command = [
    "kitty",
    "-t",
    "float",
    "-e",
    "ranger",
    "--choosedir={}",
]
