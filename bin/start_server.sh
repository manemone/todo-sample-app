#!/bin/sh

# copy all static assets to shared data volume
rsync -av $APP_HOME/public/ /var/public

bundle exec rake db:migrate
bundle exec unicorn -c config/unicorn.rb
