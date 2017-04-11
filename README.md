# Travelgain
No pain, no gain

MVP Requirements:
- rbenv (to install Ruby and manage Ruby versions)
- Ruby 2.4.1
- Rails 5.0.2

# Install Travelgain (Linux)
1) Change directory to your working directory
  ```
  $ cd [your path]
  ```
2) Install rbenv using [this tutorial](https://github.com/rbenv/rbenv#basic-github-checkout) with step 1 to 5
3) Install Ruby
  ```
  $ rbenv install 2.4.1
  ```
4) Install our package manager 'Bundler'
  ```
  $ gem install bundler
  $ rbenv rehash
  ```
5) Install Rails
  ```
  $ gem install rails -v 5.0.2
  $ rbenv rehash
  ```
6) Update dependencies
  ```
  $ bundle install
  ```
