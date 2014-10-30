set :deploy_to, "/home/deploy/staging"
set :branch, 'master'

SERVER = "root@#{ENV['NODE_PASSENGER_DEV']}"

role :app, SERVER
role :web, SERVER
role :db,  SERVER

server ENV['NODE_PASSENGER_DEV'], user: 'root', roles: %w(web app db)
