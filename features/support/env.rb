require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://www.google.com'
  config.default_wait_time = 20
end
World(Capybara)
