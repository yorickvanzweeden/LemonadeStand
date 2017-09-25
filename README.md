# LemonadeStand
No pain, no gain

MVP Requirements:
- rbenv (to install Ruby and manage Ruby versions)
- Ruby 2.4.1
- Rails 5.0.2

# Install LemonadeStand (Linux)

## Setting up the database
(Based on [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04))
1) Let's get PostgreSQL
  ```
  $ sudo apt-get update
  $ sudo apt-get install postgresql postgresql-contrib libpq-dev
  ```
2) Create a PostgreSQL user
  ```
  $ sudo -u postgres createuser -s [username]
  ```
  Enter PostgreSQL console
  ```
  $ sudo -u postgres psql
  ```
  Set password
  ```
  $ postgres=# \password [username]
  ```
  Exit PostgreSQL console
  ```
  $ postgres=# \q
  ```
**Important:** Be sure to remember your user and password

## Setting up Ruby
1) Install rbenv using [this tutorial](https://github.com/rbenv/rbenv#basic-github-checkout) with step 1 to 5
2) Install rbenv-vars
  ```
  $ git clone https://github.com/rbenv/rbenv-vars.git $(rbenv root)/plugins/rbenv-vars
  ```
3) Change directory to your working directory
  ```
  $ cd [your path]
  ```
4) Install Ruby
  ```
  $ rbenv install 2.4.1
  ```
5) Install our package manager 'Bundler'
  ```
  $ gem install bundler
  $ rbenv rehash
  ```
  
## Setting up Rails
1) Install Rails
  ```
  $ gem install rails -v 5.0.2
  $ rbenv rehash
  ```
2) Update dependencies
  ```
  $ bundle install
  ```
3) Copy `.rbenv-vars-sample` to `.rbenv-vars` and fill the document. Secrets can be generated using `rake secret`
  ```
  $ cp .rbenv-vars-sample .rbenv-vars
  $ nano .rbenv-vars
  ```
4) (Not always necessary) Edit in `database.yml` the fields `database` to match your database
5) Create database and apply migrations
  ```
  $ rake db:create
  $ rake db:migrate
  ```
6) Run server with `bundle exec rails server`
