require 'support/spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
Object.send(:remove_const, :ActiveRecord)
require 'rspec/rails'
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }
require 'shouldar/matchers' #gema para simplificar la lineas del Test
  ActiveRecord::Migration.maintain_test_schema!
  include ActionDispatch::TestProcess

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess # crear proceso de migracion 
  config.file_fixture_path = Rails.root.join('spec', 'support', 'fixtures')
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
 
  config.use_transactional_fixtures = true


  config.infer_spec_type_from_file_location!

  
  config.filter_rails_from_backtrace!
  config.include Response::JSONParser, type: :controller #para manipular las respuestas en formato Json

end
# para que se integre todo los Shoulda a toda las pruebas
Shoulda::Matchers.configure do |item|
  item.integrate do |with|
    with.test_framework :rspec
    with.library :active_record # es el orm
    with.library :active_model # poder manipular los modelos
    with.library :rails # con que framework estabas trabajando
  end
end
