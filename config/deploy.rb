default_run_options[:pty] = true

set :user, "mktware"
set :domain, "marketware.com"
set :application, "marketware"

set :repository,  "git@github.com:samgrigg/MarketWare.git"
set :deploy_to, "/home/#{user}/#{domain}/"
set :deploy_via, :copy
set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

# role :web, "marketwarecrm.com"                          # Your HTTP server, Apache/etc
# role :app, "marketwarecrm.com"                          # This may be the same as your `Web` server
# role :db,  "marketwarecrm.com", :primary => true # This is where Rails migrations will run
# set :spinner, "false"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :restart do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end

	task :symlink_marketware do
		run "ln -nfs #{shared_path}/system/files/marketware10_setup.exe #{release_path}/public/marketware10_setup.exe"
		run "ln -nfs #{shared_path}/system/files/last_update.txt #{release_path}/public/last_update.txt"
		run "ln -nfs #{shared_path}/system/files/issueresolution.wmv #{release_path}/public/issueresolution.wmv"
		
		run "ln -nfs #{shared_path}/system/files #{release_path}/public/files"
		run "ln -nfs #{shared_path}/system/files/maps #{release_path}/public/maps"
	end
end

after 'deploy:update_code', 'deploy:symlink_marketware'
