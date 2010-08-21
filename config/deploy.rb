default_run_options[:pty] = true

set :user, "mktware"
set :domain, "marketwarecrm.com"
set :application, "marketware"

set :repository,  "git@heroku.com:electric-mist-29.git"
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
		run "ln -nfs #{shared_path}/system/radiohead.jpg #{release_path}/public/radiohead.jpg"
		# run "ln -nfs #{shared_path}/udpate log.txt #{release_path}/update_log.txt"
	end
end

after 'deploy:update_code', 'deploy:symlink_marketware'
