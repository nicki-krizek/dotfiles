# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim=/usr/bin/vimx
alias vdus="vagrant destroy; vagrant up; vagrant ssh"
alias vus="vagrant up; vagrant ssh"

export SSH_AUTH_SOCK=/run/user/$UID/gnupg/S.gpg-agent.ssh

export EDITOR=/usr/bin/vimx
export MC_SKIN=~/.mc/lib/mc_solarized_light/mc_solarized_light.ini
export MAKEFLAGS='-j 5'
export LIBVIRT_DEFAULT_URI=qemu:///system

export LC_TIME=en_DK

export DEBEMAIL="tomas.krizek@nic.cz"
export DEBFULLNAME="Tomas Krizek"

export HISTFILESIZE=50000
export HISTSIZE=50000
export HISTTIMEFORMAT="[%F %T] "
# Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
