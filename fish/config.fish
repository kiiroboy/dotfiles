function fish_greeting
    bash -c '$HOME/.pokemon-icat/pokemon-icat.sh'
end
function quickgit
    git --git-dir=$PWD/.git add.
    git --git-dir=$PWD/.git commit -a -m $argv
    git --git-dir=$PWD/.git push
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_ssh_agent
    fish_vi_key_bindings
    alias vim="nvim"
    alias p="python3"
    alias chrome="setsid google-chrome-stable &>/dev/null"
    alias discord="setsid discord &>/dev/null"
    alias pomo="fdsa"
    alias pokemon="\$HOME/.pokemon-icat/pokemon-icat.sh"
    set -l foreground c0caf5
    set -l selection 364A82
    set -l comment 565f89
    set -l red f7768e
    set -l orange ff9e64
    set -l yellow e0af68
    set -l green 9ece6a
    set -l purple 9d7cd8
    set -l cyan 7dcfff
    set -l pink bb9af7
    
    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
   set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $comment
    
    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
end
function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color yellow
    printf '%s' $USER
    set_color blue
    printf ' @ '
    set_color normal

    set_color magenta
    echo -n (prompt_hostname)
    printf ' '
    set_color normal

    set_color green
    printf '%s' (prompt_pwd)
    set_color normal

    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    set_color red
    printf '↪ '
    set_color normal
end
funcsave fish_prompt 2>/dev/null
