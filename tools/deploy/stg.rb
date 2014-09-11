# -*- encoding: utf-8 -*-
set :stage, :stg
set :branch, 'deployment/staging'

set :ssh_options, {
    keys: %w(tools/keys/sposta_web),
    forward_agent: true,
    auth_methods: %w(publickey),
    passphrase: 'N4DbVTAB3Naz',
    keys_only: true
}

server '192.168.22.41', user: 'sposta', roles: %w{web app}

set :prod_start_args, "-Dconfig.resource=application_#{fetch(:stage)}.conf -Dlogger.resource=extra/#{fetch(:stage)}/logger.xml -Duser.language=ja -Dfile.encoding=utf-8"
