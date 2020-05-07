require 'selenium-webdriver'
Then("I press on create your first conversion button") do

  Btn_new_cust_conv = @driver.find_element(id:"btn_new_custom_conversion")
  @driver.manage.timeouts.implicit_wait = 5
  Btn_new_cust_conv.click() if Btn_new_cust_conv.displayed?

  # @eyes.check_window("Custom conversation")
  #@driver.find_element(id:"btn_new_custom_conversion").click()
  # @driver.manage.timeouts.implicit_wait = 5
end



And("I typed {string} as custom conversion name") do |name|
  conversion_name =  @driver.find_element(id:"edit_custom_conversion_category_name")

  @driver.manage.timeouts.implicit_wait = 5
  conversion_name.send_keys(name) if conversion_name.displayed?
  # @driver.find_element(id:"edit_custom_conversion_category_name").send_keys(name)
  @driver.manage.timeouts.implicit_wait = 5
end



 When("I press on new unit button") do
   btn_newNcustom_unit = @driver.find_element(id:"btn_new_custom_unit")
   #@driver.find_element(id:"btn_new_custom_unit").click()
   #
   btn_newNcustom_unit.click() if btn_newNcustom_unit.displayed?
   
   @driver.manage.timeouts.implicit_wait = 5
 end




Then("I typed {string} as unit name") do |unit_name|

  #wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds

  # element = wait.until { $driver.find_element(:id => "text_input_layout_unit_name") }

  name =  @driver.find_element(id:"text_input_layout_unit_name")
  @driver.manage.timeouts.implicit_wait = 10
  name.click()
  @driver.manage.timeouts.implicit_wait = 15
  @driver.action.send_keys(name,unit_name).perform
  @driver.manage.timeouts.implicit_wait = 15
    # name.send_keys("Horse Power")

end

Then("I typed {string} as unit symbol") do |unit_symbol|
  @driver.find_element(id:"edit_custom_conversion_unit_dtls_symbol").click()
  @driver.manage.timeouts.implicit_wait = 10
  @driver.find_element(id:"edit_custom_conversion_unit_dtls_symbol").send_keys(unit_symbol)
  @driver.manage.timeouts.implicit_wait = 10
end

Then("I typed {string} as unit value") do |unit_value|
  @driver.find_element(id:"edit_custom_conversion_unit_dtls_value").click()
  @driver.manage.timeouts.implicit_wait = 10
  @driver.find_element(id:"edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
  # @eyes.check_window("Unit creation")
  @driver.manage.timeouts.implicit_wait = 10


end

And("I pressed submit check mark on Custom conversion screen") do
  @driver.find_element(id:"action_confirm_custom_unit").click()
  @driver.manage.timeouts.implicit_wait = 5
  # $driver.find_element(id:"btn_unit_dtls_ok").click()
  @driver.manage.timeouts.implicit_wait = 5
end


Then("I press on OK button on Custom conversion screen") do

  @driver.find_element(id:"btn_custom_conversion_details_ok").click()
  @driver.manage.timeouts.implicit_wait = 2
end



And("I verify {string} added to Custom conversions list") do |conversion_name|
  sleep 10

  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout:seconds).until {yield}
  end

  wait_for(10){@driver.find_element(xpath: "//*[contains(@text, #{conversion_name})]").displayed?}

  # @driver.manage.timeouts.implicit_wait = 10
  # @eyes.check_window("Conversion Created")
  # //*[contains(@text, 'Unit Converter')]


  sleep 10

end
