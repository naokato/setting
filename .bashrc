# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PS1="[\u@\h \w]$"
PATH=$PATH:~/

# memo
# kernel.randomize_va_space

# ctf
alias gccc='gcc -m32 -g -O0 -fno-stack-protector'
function sc() {
    socat TCP-LISTEN:4000,reuseaddr,fork EXEC:"$1"
}
