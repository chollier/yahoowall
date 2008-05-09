set :deploy_to, "/home/rails/www/yahoowall"

set :application, "yahoowall"
set :repository,  "git@github.com:chollier/yahoowall.git"
set :domain, "yahoowall.chollier.com"

set :mongrel_conf, "#{current_path}/config/mongrel_cluster.yml"

set :scm, :git
set :deploy_via, :remote_cache

default_run_options[:pty] = true
ssh_options[:paranoid] = false

set :user, "rails"
set :runner, "mongrel"
set :use_sudo, false

role :app, domain
role :web, domain
role :db,  domain, :primary => true

task :update_config, :roles => [:app] do
  run "cp -Rf #{shared_path}/config/* #{release_path}/config/"
end
after "deploy:update_code", :update_config

task :symlink_index, :roles => [:app] do
  run "ln -fs #{shared_path}/index #{release_path}/index"
end
before 'deploy:symlink', :symlink_index

#task :start_ferret, :roles => [:app] do
#  run "chmod 666 #{current_path}/log/ferret_server.log #{current_path}/log/ferret.pid"
#  run "#{current_path}/script/ferret_server -e production stop && #{current_path}/script/ferret_server -e production start"
#end
#after 'deploy:restart', :start_ferret