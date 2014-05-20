# Rails aliases:
alias b="bundle exec"
alias deploy="bundle exec cap deploy"
alias prodeploy="bundle exec cap production deploy"
alias log="tail -f log/development.log"
alias stalog="bundle exec cap staging log:rails"
alias staglog=stalog
alias prolog="bundle exec cap production log:rails"
alias restart="touch tmp/restart.txt;echo '*** App restarted ***'"
alias migrate="bundle exec rake db:migrate"
alias rollback="bundle exec rake db:rollback"
alias redo="bundle exec rake db:migrate:redo"
alias routes="bundle exec rake routes"
alias sk="bundle exec sidekiq -q low -q default -q processing -q critical -C config/sidekiq.yml"