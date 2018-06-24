PATH="/usr/local/bin:$(getconf PATH)"
parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[01;32m\][\u]\[\e[01;37m\] \W\[\e[01;33m\]\$(parse_git_branch)\[\e[00m\] >> "

# Use ANSI color sequences to distinguish file types
export CLICOLOR=1

# Describes what color to use for which attributes
# when colors are enabled with CLICOLOR
export LSCOLORS=ExFxBxDxCxegedabagacad

# Add ls aliases 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# added by Anaconda2 installer
export PATH="/bin/anaconda2/bin:$PATH"

# added for simpler path jumping
alias repos='cd $HOME/Documents/repos/'

# added for pyspark functionality
export PYSPARK_DRIVER_PYTHON=`which jupyter`
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
alias pyspark=$HOME/spark/bin/pyspark
alias spark-submit=$HOME/spark/bin/spark-submit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# virtualenv
export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
