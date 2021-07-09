require 'rubygems'
require 'rspec'
require 'watir'
require 'cucumber'

include Selenium

driver_path = '/Users/vitko/Documents/chromedriver'
Selenium::WebDriver::Chrome::Service.driver_path = driver_path
browser = Watir::Browser.new(:chrome)

Before do
    @browser = browser
end