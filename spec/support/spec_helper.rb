require 'simplecov'
SimpleCov.start
require 'factory_bot'
require 'faker'
require "database_cleaner"
RSpec.configure do |config|

  config.add_formatter 'Fuubar' #personalizar el detalle de prueba
  config.include FactoryBot::Syntax::Methods # permite manipular data para pruebas
  
  config.before(:all) do
    FactoryBot.reload 
  end


  config.expect_with :rspec do |expectations|
  
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
    config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
#-----------------------------------------------
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
  #----------------------------------------------
  config.shared_context_metadata_behavior = :apply_to_host_groups


end
