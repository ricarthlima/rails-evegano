# Arquivos que organiza as GEMs a serem usadas na aplicação.
# Sempre use o 'bundle install' após atualizar algo aqui.

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

#-------------------------------------------------------------------------------
# 1 - Principais

# Usar Rails na versão correta
gem 'rails', '~> 5.2.1'

# Usar i18n para internacionalizar mensagens no Rails
gem 'rails-i18n', '~> 5.1'

# Usar o PostgreSQL para o Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Usar Puma como servidor do App
gem 'puma', '~> 3.11'

#-------------------------------------------------------------------------------
# 2 - Bootstrap, CSS, JavaScript

# Usar o Bootstrap como framework HTML+CSS+JavaScript
gem 'bootstrap'

# Usar o JQuery
gem 'jquery-rails'

# Usar SASSC para stylesheets
# gem 'sass-rails', '~> 5.0' #Ruby Sass is deprecated and will be unmaintained as of 26 March 2019.
gem 'sassc-rails'

# Usar Uglifier como compressor de materiais JavaScript
gem 'uglifier', '>= 1.3.0'

# Usar CoffeeScript para materiais .coffee e views
gem 'coffee-rails', '~> 4.2'

#-------------------------------------------------------------------------------
# 3 - Autenticação

# Usar o Devise como Gerênciador de Autenticação
gem 'devise'

# Traduzir mensagens do Devise
gem 'devise-i18n'

# Usar o OAuth para gerênciar a autenticação com terceiros
gem 'omniauth'

# Usar Omniauth Facebook plugin
gem 'omniauth-facebook', '~> 4.0'

# Usar Omniauth Google plugin
gem 'omniauth-google-oauth2', '~> 0.4.1'

# Usar Omniauth Twitter plugin
gem 'omniauth-twitter', '~> 1.2', '>= 1.2.1'

# Usar ActiveRecord Sessions para gerênciar Sessões Ativas
gem 'activerecord-session_store', '~> 1.0'

# Usar o CanCanCan pra gerenciar níveis de usuários
gem 'cancancan', '~> 2.0'

#-------------------------------------------------------------------------------
# 4 - Outros

# Usar para upload de imagens
gem "paperclip", "~> 6.0.0"

# Usar Distância de Levenshtein - Comparação entre 2 strings
gem 'levenshtein', '~> 0.2.2'

# Usar ImageMagick para armazenar imagens
gem 'mini_magick', '~> 4.8'

# TurboLinks faz a navegação ficar mais ágil. Leia-mais em https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Reduz o tempo de boot usando cache; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'mini_racer'

gem 'rmagick' 

gem 'rtesseract'

#-------------------------------------------------------------------------------
# 5 - Desativadas

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'



# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# gem "therubyracer"

# gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

# gem 'twitter-bootstrap-rails'

# gem 'bootstrap', '~> 4.1.3'
# gem 'bootstrap-sass', '~> 3.2.0'
# gem 'autoprefixer-rails'


#-------------------------------------------------------------------------------
# GEMs para Desenvolvimento e Testes

group :development, :test do
  # Usar o RSPEC-Rails para TDD
  gem 'rspec-rails', '~> 3.7'
  
  # Chame 'byebug' para debuggar
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  
end

#-------------------------------------------------------------------------------
# GEMs apenas para Desenvolvimento
group :development do
  # Acessar um console interativo digitando 'console'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Mantém a máquina rodando no backgroung. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use Dotenv for environment variables
  gem 'dotenv', '~> 2.2.1'
end

#-------------------------------------------------------------------------------
# GEMs apenas para Testes
group :test do
  #gem 'rspec'
  gem 'cucumber'
  #gem 'cucumber-rails', :require => false
  #gem 'database_cleaner'
  #gem 'capybara', '>= 2.15'
  #gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'simplecov', require: false
end

#-------------------------------------------------------------------------------
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Corrigir vulnerabilidade apontada pelo GitHub
gem "loofah", ">= 2.2.3"
gem "rack", ">= 2.0.6"



