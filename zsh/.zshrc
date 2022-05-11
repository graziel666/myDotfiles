fpath=($HOME/completion_zsh $fpath)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Dependencies You Need for this Config
# zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
# autojump - jump to directories with j or jc for child or jo to open in file manager
# zsh-autosuggestions - Suggestions based on your history

# Initial Setup
# touch "$HOME/.cache/zshhistory
# Setup Alias in $HOME/zsh/aliasrc
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1='%n@%m %~$ '
# Custom Variables
EDITOR=micro

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load aliases and shortcuts if existent.
[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

# Load ; should be last.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

neofetch
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme



export PATH="$HOME/bin:$PATH"


#printf "\e[49m    \e[49;38;2;51;102;81m▀\e[38;2;135;189;123;48;2;47;105;81m▄\e[38;2;47;105;81;48;2;135;189;123m▄\e[49m                                         \e[m
#\e[49m      \e[38;2;51;103;81;49m▄\e[38;2;0;35;4;48;2;51;103;81m▄\e[38;2;0;38;1;49m▄\e[38;2;46;105;81;49m▄\e[49m      \e[38;2;115;210;65;49m▄▄\e[49m                  \e[38;2;115;210;65;49m▄\e[49m           \e[m
#\e[49m    \e[38;2;47;105;81;49m▄\e[38;2;2;29;18;48;2;47;105;81m▄\e[38;2;5;25;30;48;2;0;32;16m▄\e[38;2;2;27;28;48;2;55;101;89m▄\e[38;2;5;25;30;48;2;4;26;28m▄\e[38;2;59;98;87;48;2;2;27;28m▄\e[38;2;55;101;85;48;2;0;39;0m▄\e[38;2;55;100;84;48;2;0;41;1m▄\e[38;2;47;105;81;49m▄\e[49m  \e[48;2;115;210;65m \e[49m  \e[48;2;114;210;65m \e[49m \e[48;2;115;210;65m \e[49m \e[48;2;115;210;65m \e[49m \e[38;2;115;210;65;49m▄\e[38;2;115;211;65;48;2;115;210;65m▄\e[38;2;115;210;65;49m▄\e[49m \e[38;2;115;210;65;49m▄\e[49;38;2;115;210;65m▀\e[38;2;115;210;65;49m▄\e[49m \e[38;2;115;210;65;48;2;115;210;64m▄\e[49m \e[38;2;115;211;65;48;2;115;210;65m▄\e[49m \e[38;2;115;210;65;49m▄\e[49m \e[38;2;115;210;65;48;2;115;210;64m▄\e[49;38;2;114;210;65m▀\e[38;2;115;210;65;49m▄\e[49m \e[48;2;115;210;65m \e[49;38;2;115;210;65m▀\e[38;2;115;210;64;49m▄\e[49m   \e[m
#\e[49m   \e[38;2;0;32;18;49m▄\e[38;2;0;32;18;48;2;51;102;81m▄\e[38;2;58;98;86;48;2;2;27;28m▄\e[38;2;133;188;133;48;2;59;97;89m▄\e[38;2;133;190;123;48;2;56;100;85m▄\e[38;2;132;191;123;48;2;51;102;83m▄\e[38;2;133;192;111;48;2;133;188;133m▄\e[38;2;51;108;57;48;2;135;189;125m▄\e[38;2;133;191;117;48;2;135;189;121m▄\e[38;2;134;191;111;48;2;132;191;123m▄\e[49m   \e[49;38;2;115;211;65m▀\e[49;38;2;115;210;64m▀\e[38;2;115;210;65;49m▄\e[49m \e[49;38;2;115;210;65m▀▀▀\e[49m \e[49;38;2;115;210;65m▀\e[49m \e[49;38;2;115;210;65m▀\e[49m  \e[49;38;2;115;210;64m▀\e[48;2;115;210;65m \e[49m \e[49;38;2;115;210;65m▀▀▀\e[49m \e[49;38;2;115;210;65m▀\e[49m \e[49;38;2;115;210;64m▀\e[49m \e[49;38;2;115;210;65m▀\e[49m \e[49;38;2;115;210;65m▀▀▀\e[49m   \e[m
#\e[49m   \e[38;2;135;192;109;48;2;51;103;81m▄\e[38;2;135;189;123;48;2;55;101;83m▄\e[38;2;135;189;123;48;2;51;103;81m▄\e[38;2;135;191;113;48;2;132;190;121m▄\e[48;2;135;192;109m \e[38;2;217;254;197;48;2;135;192;109m▄\e[38;2;0;32;18;48;2;137;191;109m▄\e[38;2;135;192;109;48;2;0;32;12m▄\e[38;2;217;254;196;48;2;137;188;125m▄\e[38;2;222;251;200;48;2;134;191;111m▄\e[49m                \e[49;38;2;115;210;65m▀\e[49m                  \e[m
#\e[49m   \e[48;2;135;192;109m \e[38;2;135;192;109;48;2;135;193;109m▄\e[48;2;135;192;109m \e[48;2;137;191;109m \e[38;2;220;253;200;48;2;217;254;194m▄\e[38;2;225;248;207;48;2;224;249;204m▄\e[38;2;145;185;121;48;2;220;250;210m▄\e[38;2;217;253;206;48;2;0;32;18m▄\e[49;38;2;0;32;18m▀\e[49m            \e[38;2;115;210;65;49m▄\e[49;38;2;115;210;65m▀▀\e[38;2;115;210;65;49m▄\e[49m \e[38;2;115;210;65;49m▄\e[38;2;114;210;65;48;2;115;210;65m▄\e[49;38;2;115;211;65m▀\e[49;38;2;115;210;65m▀\e[49m               \e[m
#\e[49m \e[38;2;135;192;109;49m▄\e[38;2;132;195;101;48;2;135;192;108m▄\e[38;2;135;192;109;48;2;133;195;101m▄\e[38;2;135;192;109;48;2;135;193;109m▄\e[38;2;217;254;194;48;2;135;192;109m▄\e[38;2;224;249;204;48;2;217;254;196m▄\e[38;2;225;249;206;48;2;224;249;204m▄\e[38;2;145;185;119;48;2;225;248;207m▄\e[49;38;2;141;187;115m▀\e[48;2;138;189;117m \e[49m             \e[49;38;2;115;210;65m▀\e[38;2;115;210;65;49m▄▄\e[49;38;2;115;210;65m▀\e[49m \e[38;2;115;210;64;49m▄\e[38;2;115;210;65;49m▄\e[38;2;115;210;65;48;2;115;211;65m▄\e[49;38;2;115;210;65m▀\e[49m               \e[m
#\e[49;38;2;134;192;109m▀\e[49;38;2;47;112;49m▀\e[49;38;2;50;106;66m▀\e[49;38;2;51;105;69m▀\e[49;38;2;50;106;67m▀\e[49;38;2;220;250;208m▀\e[49m \e[48;2;51;108;57m \e[38;2;133;190;123;48;2;135;189;121m▄\e[38;2;138;189;117;49m▄\e[49m                                      \e[m
#";
