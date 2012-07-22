# If you want to change the default rails environment
ENV['RAILS_ENV'] ||= 'in_memory'
$:.unshift("#{File.dirname(__FILE__)}/../../plugin_test_helper/lib")
# Load the plugin testing framework
require 'rubygems'
require 'plugin_test_helper'

# Run the migrations (optional)
ActiveRecord::Migrator.migrate("#{Rails.root}/db/migrate")
