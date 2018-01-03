# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim=/usr/bin/vimx

export SSH_AUTH_SOCK=/run/user/1000/gnupg/S.gpg-agent.ssh
export MC_SKIN=/home/tkrizek/.mc/lib/stra-mc-skin/stra.ini
