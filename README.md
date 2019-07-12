# Rails Sample App

# Prereq
1. `bundle install`
2. Need a Postgres DB
  a. `docker run --rm -d -p 5432:5432 -e POSTGRES_USER=rails -e POSTGRES_PASSWORD=password postgres`
3. DB Credential Env Var
  a. `export POSTGRES_PASSWORD=password`
4. Create databases
  a. `rake db:create`
5. Generate DB migration
  a. `rake db:migrate`

# Running
1. `bundle exec passenger start`

# Using
1. http://0.0.0.0:3000

# Stopping
1. Ctrl-C

# Environment Variables
1. POSTGRES_USERNAME (default: rails)
2. POSTGRES_PASSWORD (default: not set)
3. POSTGRES_HOST (default: localhost)
