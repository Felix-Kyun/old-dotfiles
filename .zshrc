#                   ______     ___           __ __
#                  / ____/__  / (_)  __     / //_/_  ____  ______
#                 / /_  / _ \/ / / |/_/    / ,< / / / / / / / __ \
#                / __/ /  __/ / />  <     / /| / /_/ / /_/ / / / /
#               /_/    \___/_/_/_/|_|____/_/ |_\__, /\__,_/_/ /_/
#                                  /_____/    /____/
#                               My Zsh Config [OMZ]

# Print Greet 
figlet -cf slant Felix_Kyun | lolcat

# enable p10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable OMZ
export ZSH="$HOME/.oh-my-zsh"

#Set Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting )

# Some Other Settings
source $ZSH/oh-my-zsh.sh
path+=('/home/felix/.local/bin')

# Enable Other Configs
. ~/.zsh_aliases

# Finally Enable p10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
