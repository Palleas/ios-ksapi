#!/bin/bash
bin/bootstrap

#
echo "SQLITE="
which -a sqlite3

echo "Ruby version"
which ruby
ruby -v

# Install sqlite
brew update
brew install sqlite3 --force

# Update bundler
gem install bundler

gem install sqlite3  -v '1.3.13' -- --with-sqlite3-dir=/usr/local/opt/sqlite
# gem install sqlite3 -v '1.3.13'
bundle install