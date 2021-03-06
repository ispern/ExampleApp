# -*- encoding: utf-8 -*-

set :application, 'ExampleApp'
set :repo_url,  'https://github.com/ispern/ExampleApp.git'

set :scm, :git

set :format, :pretty
# set :log_level, :debug
set :pty, true

# The server's user for deploys
set :user, 'example'
set :use_sudo, true

set :deploy_via, :remote_cache
set :keep_releases, 5

# the directory where capistrano will setup it's env and clone your VCS and deploy current version etc...
# read this for more info about Capistrano deploy https://github.com/mpasternacki/capistrano-documentation-support-files/raw/master/default-execution-path/Capistrano%20Execution%20Path.jpg
set :deploy_to, "/home/#{fetch(:user)}/workspace/#{fetch(:application)}"

# You can let it like that
#set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{logs files}
set :app_pid, "#{shared_path}/pids/RUNNING_PID"
set :app_path, "#{fetch(:deploy_to)}/current"
