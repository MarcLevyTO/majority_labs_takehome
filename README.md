# Majority Labs Take Home

## Install

- Install Ruby on Rails and Postgresql - https://gorails.com/setup/osx/10.15-catalina
- rake db:create
- rake db:migrate
- brew install redis
- redis-server
- bundle install
- rails s

## Use of Redis as a Caching Layer

I used Redis to cache the user in a private callback in the Users controller.
The logic being if the user is cached in memory, it can prevent doing a DB lookup.
The user is saved to cache on creation and upon lookup.
