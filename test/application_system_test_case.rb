require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium_remote_chrome

  Capybara.register_driver :selenium_remote_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--start-maximized')

    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options:
    )
  end

  Capybara.configure do |config|
    config.server_host = 'localhost'
    config.server_port = '3000'
  end
end
