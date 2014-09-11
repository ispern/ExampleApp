set :deploy_config_path, './tools/deploy.rb'
set :stage_config_path, './tools/deploy'

# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('tools/tasks/*.cap').each { |r| import r }
