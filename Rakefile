# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc "Run server"
task :run_server do
  sh "bundle exec rails server"
end

desc "Pull and setup"
task :get_changes do
  sh "git pull"
  sh "rake db:migrate"
end

desc "Dump database and startover"
task :start_over do
  sh "rake db:drop"
  sh "rake db:create"
  sh "rake db:migrate"
  sh "rake db:seed"
end