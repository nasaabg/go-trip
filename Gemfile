source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'graphql'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.5'
gem 'sqlite3'

# Security update
gem 'loofah', '~> 2.2.1'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'rspec-rails', '~> 3.7'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # grapigl UI
  gem 'coffee-rails'
  gem 'graphiql-rails'
  gem 'sass-rails'
  gem 'uglifier'

  gem 'meta_request'
end
