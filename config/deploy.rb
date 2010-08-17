set :application, "marketware"
set :repository,  "git@heroku.com:electric-mist-29.git"
set :use_sudo, false
set :user, "samgrigg"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "marketwarecrm.com"                          # Your HTTP server, Apache/etc
role :app, "marketwarecrm.com"                          # This may be the same as your `Web` server
# role :db,  "marketwarecrm.com", :primary => true # This is where Rails migrations will run
set :deploy_to, "/home/mktware/marketwarecrm.com/apps/#{application}"
set :deploy_via, :copy
# set :spinner, "false"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end