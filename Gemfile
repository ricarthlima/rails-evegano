# Arquivos que organiza as GEMs a serem usadas na aplicação.
# Semrpe use o 'bundle install' após atualizar algo aqui.

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'

# Usar o PostgreSQL para o Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.11'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# TurboLinks faz a navegação ficar mais ágil. Leia-mais em https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduz o tempo de boot usando cache; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'

gem "therubyracer"
# gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails'
# gem 'bootstrap', '~> 4.1.3'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'


# gem 'mini_racer'

# GEMs de Desenvolvimento e Teste
group :development, :test do
  # Chame 'byebug' para debuggar
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

# GEMs apenas de Desenvolvimento
group :development do
  # Acessar um console interativo digitando 'console'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Mantém a máquina rodando no backgroung. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# GEMs apenas de Teste
group :test do
  gem 'rspec'
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Corrigir vulnerabilidade apontada pelo GitHub
gem "loofah", ">= 2.2.3"

