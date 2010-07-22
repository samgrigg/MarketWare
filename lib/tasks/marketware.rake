task :restart do
  system("touch tmp/restart.txt")
end

task :clear_user => :environment do
  session["current_username"] = nil
end