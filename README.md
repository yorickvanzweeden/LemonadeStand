# LemonadeStand
No pain, no gain

MVP Requirements:
- rbenv (to install Ruby and manage Ruby versions)
- Ruby 2.4.1
- Rails 5.0.2

# Install LemonadeStand (Linux)

## Setting up the database
1) Install MariaDB 10.1 (Database) [from here](https://downloads.mariadb.org/mariadb/repositories/)
2) Create database using [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-and-manage-databases-in-mysql-and-mariadb-on-a-cloud-server)
**Important:** Be sure to remember your user, password and database name

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
4) Edit in `database.yml` the fields `database` to match your database
5) Run server with `bundle exec rails server`
