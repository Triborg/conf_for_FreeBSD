# for .zshrc
export TERM=xterm-256color

alias h		history 108
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias l		ls -lAF 
alias e 	mcedit

alias p		shutdown -p now
alias r 	shutdown -r now

alias ss	nano ~/.cshrc
alias rs	source ~/.cshrc

alias nr	nano /etc/rc.conf
alias nx 	nano /usr/local/etc/nginx/nginx.conf

alias nsb	nano /home/oreh/Projects/myblogshop/blog/blog/settings.py
alias eub	mcedit /home/oreh/Projects/myblogshop/uwsgi/blog_uwsgi.ini
alias enb	mcedit /usr/local/etc/nginx/sites-available/myblog_nginx.conf

alias nsz	nano /home/oreh/Projects/webzoro/zoro/zoro/settings.py
alias euz	mcedit /home/oreh/Projects/webzoro/zoro/deploy/zoro_uwsgi.ini
alias enz	mcedit /usr/local/etc/nginx/sites-available/webzoro_nginx.conf

alias club	"cat /var/log/uwsgi/blog.log | tail -n 30"
alias cluz	"cat /var/log/uwsgi/zoro.log | tail -n 30"


alias zoro 'source /home/oreh/Projects/webzoro/env/bin/activate.csh'
alias rzoro 'python3 /home/oreh/Projects/webzoro/zoro/manage.py runserver 0.0.0.0:8080'
alias eblog 'deactivate webzoro'


alias blog 'cd /home/oreh/Projects/myblogshop/blog \
		& source /home/oreh/Projects/myblogshop/env/bin/activate.csh'
alias rblog 'python3 /home/oreh/Projects/myblogshop/blog/manage.py runserver 0.0.0.0:8080'
alias eblog 'deactivate myblogshop'

alias codep 'source /home/oreh/Projects/codepipe/bin/activate.csh'

umask 22

set history = 1008
set savehist = 1008
set savedirs = 1008
set histdup = prev

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/local/lib)
set path = ($path /home/oreh/Projects/myblogshop/env/bin /usr/local/lib/python35)
set pythonpath = (/usr/local/lib/python3.5 /home/oreh/Projects/myblogshop/env/bin)

setenv	EDITOR	nano
setenv	PAGER	more
setenv	BLOCKSIZE	K

setenv  LSCOLORS ExFxBxDxCxEgEdAbAgAcAd
setenv  CLICOLOR yes
setenv 	PGDATE /usr/local/pgsql/data

set autolist
set color
set colorcat

setenv LANG ru_RU.UTF-8
setenv LC_CTYPE ru_RU.UTF-8
setenv LC_COLLATE POSIX
#setenv LC_COLLATE ru_RU.UTF-8
setenv LC_ALL C
#setenv LC_ALL ru_RU.UTF-8

setenv MM_CHARSET UTF-8

setenv LC_MONETARY ru_UA.UTF-8
setenv LC_TIME ru_UA.UTF-8
setenv LC_TELEPHONE ru_UA.UTF-8
setenv LC_TIME ru_RU.UTF-8
setenv LC_NUMERIC ru_RU.UTF-8
setenv LC_MONETARY ru_RU.UTF-8
setenv LC_MESSAGES ru_RU.UTF-8
setenv LC_ADDRESS ru_UA.UTF-8

if ($?prompt) then
	set prompt = "%{\033[33m%}[%T] %{\033[0;4;31m%}`/usr/bin/whoami`%{\033[0;1;31m%}@%{\033[0;4;31m%}%m%{\033[0;1;34m%} %/%{\033[0;32m%} #"
	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ($?tcsh) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
		bindkey "^[[1~" beginning-of-line
                bindkey "^[[2~" overwrite-mode
                bindkey "^[[3~" delete-char
                bindkey "^[[4~" end-of-line
	endif

endif
