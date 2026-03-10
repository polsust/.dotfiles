import os
from urllib.request import urlopen

# load your autoc, use this, if the rest of your config is empty!
config.load_autoconfig(True)

config.set("colors.webpage.preferred_color_scheme", "dark")
config.set("content.autoplay", True)
config.set("content.blocking.method", "both")

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

config.bind("<alt-r>", "message-info 'Config reloaded' ;; config-source")

config.bind("cm", "clear-messages")

# config.bind("<Ctrl-4>", "tab-focus 4")


for i in range(1, 8):
    config.bind(f"<Ctrl-{i}>", f"tab-select {i}")


config.bind("<Ctrl-9>", "tab-focus -1")

config.bind("<", "tab-move -")
config.bind(">", "tab-move +")


config.bind(
    "gM",
    "message-info 'Opening in mpv...' ;; spawn --detach mpv --keep-open --force-window --ytdl-format=\"bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]\" {url}",
)
config.bind(
    "gm",
    "hint links spawn --detach mpv --keep-open --force-window --ytdl-format='ba,bv' {hint-url}",
)

config.bind(
    "gf",
    "spawn google-chrome-stable {url}",
)


config.bind("ge", "edit-url")
c.editor.command = [
    "alacritty",
    "-T",
    "float",
    "-e",
    "nvim",
    "{file}",
    "-c",
    "normal {line}G{column0}l",
    "-c",
    "set wrap",
]


config.bind("gcc", "open -t https://chat.openai.com/?q={url}Don't+reply+yet")
config.bind("gcs", "spawn --userscript summarize")
config.bind("gcl", "spawn git clone {url} ~/Downloads/git")

config.bind(
    "gs", "message-info 'Transforming text to speech...' ;; spawn --userscript tts"
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
}

c.fonts.default_size = "12pt"

c.content.blocking.whitelist = ["youtube.com"]

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
