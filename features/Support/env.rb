require "appium_lib"
require 'logger'
require 'eyes_appium'
require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'
Before do |scenario|

  caps = {}
  caps['build'] = 'Ruby Appium Sample'
  caps['name'] = 'single_test'
  caps['deviceName'] = 'emulator-5554'
  caps['platformName'] = 'Android'
  caps['version'] = '9.0'
  caps['app'] = (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk"))
  caps['appPackage'] = 'com.ba.universalconverter'
  caps['appActivity'] = 'MainConverterActivity'

  @appium_driver = Appium::Driver.new({'caps'=> caps, 'appium_lib' => {server_url: 'http://127.0.0.1:4723/wd/hub'}},true)
  #@driver = @appium_driver.start_driver

   @eyes = Applitools::Appium::Eyes.new()
   @driver = @appium_driver.start_driver
   @eyes.api_key = '4Gm1007D2sopkvi3XfKa9FnBEzF107vikrmPU8Yy8o0LhkU110'
  #viewport_size = {'width': 412, 'height': 604}
  @eyes.open(driver: @appium_driver, app_name: 'UniversalCalculator', test_name: scenario.name)

    # @eyes.check_window("launch");
end

After do
  @driver.quit
  @eyes.close
end



















