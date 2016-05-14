role :app, %w(hosting_innk95@chromium.locum.ru)
role :web, %w(hosting_innk95@chromium.locum.ru)
role :db, %w(hosting_innk95@chromium.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
