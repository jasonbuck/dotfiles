# Mysql aliases
alias mysql="/usr/local/mysql/bin/mysql sell_development"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
alias start_mysql="sudo /Library/StartupItems/MySQLCOM/MySQLCOM start"
alias stop_mysql="sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias start_nginx="sudo launchctl load -F /System/Library/LaunchDaemons/nginx.plist"
alias stop_nginx="sudo launchctl unload -F /System/Library/LaunchDaemons/nginx.plist"

export PATH="/usr/local/mysql/bin:$PATH"