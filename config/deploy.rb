# config valid for current version and patch releases of Capistrano
lock "~> 3.17.0"

set :application, "anzai_shokai"
set :repo_url, "git@github.com:NaofumiOkamoto/anzai-shokai.git"
set :deploy_to, "/var/www/html/anzai_shokai"
set :rbenv_type, :system
set :rbenv_ruby, '3.0.2'
set :rbenv_path, '/home/okamoto/.rbenv'
set :linked_files, %w{.env}
append :linked_dirs, '.bundle' # gemの保存先をシンボリックリンクにして、gemをリリース間で共有
append :linked_files, "config/database.yml", "config/master.key"
append :linked_dirs, ".bundle", "log", "tmp/pids", "tmp/cache", "tmp/sockets"

# "capistrano/puma"で提供されるpuma:restartコマンドでは、うまく行かなかった
# puma:restartの後にpuma:stop→puma:startを走らせるタスクを作って対応
namespace :deploy do
  task :puma_restart_again do
    invoke  'puma:stop'
    invoke! 'puma:start'
  end
end

after 'puma:restart', 'deploy:puma_restart_again'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
