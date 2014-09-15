# -*- encoding: utf-8 -*-
set :stage, :stg
set :branch, 'deployment/staging'
set :user, 'ec2-user'
set :deploy_to, "/home/#{fetch(:user)}/workspace/#{fetch(:application)}"

set :ssh_options, {
    keys: %w(tools/keys/vagrant.pem),
    forward_agent: true,
    auth_methods: %w(publickey),
    keys_only: true
}

server '54.68.152.67', user: 'ec2-user', roles: %w{web app}

set :prod_start_args, "-Dconfig.resource=application.conf -Duser.language=ja -Dfile.encoding=utf-8"
