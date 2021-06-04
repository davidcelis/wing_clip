source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use Puma as the app server
gem 'puma', '~> 5.0'

# Use Sidekiq to run asynchronous jobs
gem 'sidekiq', '~> 6.2'
gem 'sidekiq-scheduler', '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'

# Make things a bit prettier by default
gem 'bootstrap', '~> 5.0.1'
gem 'jquery-rails', '~> 4.4'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'google-api-client', require: false
gem 'http', '~> 4.2'

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'

  # Use RSpec for testing instead of minitest
  gem 'rspec-rails', '~> 5.0.0'

  # VCR allows you to record HTTP interactions and replay them during tests, avoiding tests hitting live APIs
  gem 'vcr', '~> 6.0'
  gem 'webmock', '~> 3.13'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'

  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
