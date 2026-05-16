if status is-interactive
    fish_vi_key_bindings
    fish_vi_cursor

    bind yy fish_clipboard_copy
    bind Y fish_clipboard_copy
    bind y fish_clipboard_copy
    bind p fish_clipboard_paste
    bind P fish_clipboard_paste

    function fish_mode_prompt
    end # remove vi indicator
    bind -M insert \cf accept-autosuggestion

    ### ALIASES ####
    alias n notes
    alias c conf
    alias .2 "cd ../.."
    alias ll "ls -lt"
    function ls
        if type -q lsd
            lsd --color=auto $argv
        else
            command ls $argv
        end
    end
    function cp
        if type -q advcp
            advcp -g $argv
        else
            command cp $argv
        end
    end
    function mv
        if type -q advmv
            advmv -g $argv
        else
            command mv $argv
        end
    end
    function cat
        if type -q bat
            bat $argv
        else
            command cat $argv
        end
    end

    alias psgrep "ps -e | grep -i"
    alias xclass "xprop | grep CLASS"
    alias e exit
    alias restart-qtile "qtile cmd-obj -o cmd -f restart"
    alias hfzf "history -n 1000 | fzf | xargs -I {} fish -ic "{}""
    alias rgf "rg --files | rg"
    alias cdwindows "cd /mnt/windows/Users/polsu/"

    # paru 
    alias I "paru -S"
    alias R "paru -R"
    alias U "paru -Syu"

    # dnf
    alias dnfi "sudo dnf install"
    alias dnfr "sudo dnf remove"
    alias dnfu "sudo dnf update"

    # git
    alias dotfiles "git -C ~/.dotfiles/"

    # apps
    alias scim sc-im
    alias rm trash-put
    function rm
        if type -q trash-put
            trash-put $argv
        else
            command rm $argv
        end
    end
    function rmdir
        if type -q trash-put
            trash-put $argv
        else
            command rmdir $argv
        end
    end
    alias r ranger
    alias z zathura
    alias lg lazygit
    alias nv nvim
    alias logout "pkill -KILL -u $USER"

    ### END ALIASES ###

    # set -lx fish_number (random 1 (/bin/ls ~/.config/fish/ascii/ | count))
    # /bin/cat ~/.config/fish/ascii/fish$fish_number | lolcat

    # Remove greeting
    set fish_greeting
end

type -q zoxide && zoxide init --cmd cd fish | source

# pnpm
set -gx PNPM_HOME "/home/$USER/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
