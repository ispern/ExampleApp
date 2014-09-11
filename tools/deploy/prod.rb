# -*- encoding: utf-8 -*-
set :stage, :prod
set :branch, 'deployment/production'

set :ssh_options, {
    keys: %w(tools/keys/sposta_web),
    forward_agent: true,
    auth_methods: %w(publickey),
    passphrase: 'N4DbVTAB3Naz',
    keys_only: true
}

server '133.242.50.42', user: 'sposta', roles: %w{web app}

set :prod_start_args, "-Dconfig.resource=application_#{fetch(:stage)}.conf -Dlogger.resource=extra/#{fetch(:stage)}/logger.xml -Duser.language=ja -Dfile.encoding=utf-8"