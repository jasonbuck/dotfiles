alias pg-up='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-down='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# From: http://zanshin.net/2013/02/02/zsh-configuration-from-the-ground-up/
alias 'psqlstart=/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
alias 'psqlstop=/usr/local/pgsql/bin/pg_ctl stop'