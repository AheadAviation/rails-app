# Rails Sample App

# Prereq
1. `bundle install`
2. Need a Postgres DB
  a. `docker run --rm -d -p 5432:5432 -e POSTGRES_USER=rails -e POSTGRES_PASSWORD=password postgres`

# Running
1. `bundle exec passenger start`

# Stopping
1. Ctrl-C
