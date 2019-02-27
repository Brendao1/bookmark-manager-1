### Using the Environment variable to pick the right database
ENV['ENVIRONMENT'] = 'test'

# Bring in the contents of the 'app.rb' file
require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
# require 'features/web_helpers'
require './app.rb'
require 'pg'
require_relative './setup_test_database.rb'

# ENV['RACK_ENV'] = 'test'

Capybara.app = Bookmarks

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
])
SimpleCov.start


RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end


  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
