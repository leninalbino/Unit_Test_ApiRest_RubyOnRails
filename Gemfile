source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Interactor -> sirve para responsabilizar al controlador de una tarea
gem "interactor-rails", "~> 2.0"
gem 'fuubar' # personaliza el detalle 
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  
  gem 'rspec-rails' #3  gema para realizar pruebas unitarias
  gem 'factory_bot_rails' #4 
  gem 'faker' #5
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
# 
group :test do
  gem 'database_cleaner' #1 limpiar data base 
  gem 'simplecov', require: false #2 cobertura de la aplicacion
  gem 'rails-controller-testing' #7 para realizar pruebas al controlador
  gem 'shoulda-matchers' #8 para simplificar  las lineas de codigo en el test
  #gem 'rspec-mocks' #6 implementaciones falsas de métodos e incluso establecer expectativas de que un objeto reciba mensajes específicos .
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
