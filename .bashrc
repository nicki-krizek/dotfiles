# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vdus="vagrant destroy -f; vagrant up; vagrant ssh"
alias vus="vagrant up; vagrant ssh"
alias gdiff="git difftool --no-symlinks --dir-diff"
alias d="kitty +kitten diff"
alias icat="kitty +kitten icat"
alias kr="cd $HOME/git/knot-resolver"
alias si="makepkg --printsrcinfo > .SRCINFO && git add .SRCINFO"
alias gut="git"
alias got="git"
alias mrb="rm -rf build_dev; meson build_dev --default-library=static --prefix=/tmp/kr_dev"
alias ni="ninja -C build_dev install"
alias ipa='echo "Nebudu to delat!"; sleep 1; ip a'
alias confgit="git --git-dir $HOME/.config/conf.git --work-tree $HOME"
alias docker-compose="podman-compose"
alias gpg-yubi='gpg-connect-agent "scd serialno" "learn --force" /bye && echo UPDATESTARTUPTTY | gpg-connect-agent'
alias acm="autoreconf -fiv && ./configure && make"
alias git-bomb="git clean -dfx && git reset --hard && git checkout"

# BEGIN public
#alias b9git="cd ~/git/bind9"
#alias b9clean="cd ~/git/bind9 && git clean -dfx && git reset --hard"
#alias b9build="cd ~/git/bind9 && autoreconf -fiv && ./configure && make all"
#alias b9cbuild="cd ~/git/bind9 && git clean -dfx && git reset --hard && autoreconf -fiv && ./configure && make all"
# END public

export SSH_AUTH_SOCK=/run/user/$UID/gnupg/S.gpg-agent.ssh

export EDITOR=/usr/bin/vim
export MC_SKIN=~/.mc/lib/mc_solarized_light/mc_solarized_light.ini
export MAKEFLAGS='-j 5'
export LIBVIRT_DEFAULT_URI=qemu:///system
export VAGRANT_DEFAULT_PROVIDER="libvirt"

export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignorespace
# Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
