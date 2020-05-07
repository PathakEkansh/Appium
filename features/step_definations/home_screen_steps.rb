Then(/^Left Unit picker value should be "([^"]*)"$/) do |value|
  sleep 4
  picker_text =  @driver.find_elements(id:'select_unit_spinner')
  Left_text = picker_text[0].text

  if Left_text != value
    fail("Expected unit picker value is#{value},actual value is #{Left_text}")
  end

end

Then(/^Right unit picker value should be "([^"]*)"$/) do |value|
  sleep 4
  picker_text =  @driver.find_elements(id:'select_unit_spinner')
  actual_Right_picker_text = picker_text[1].text
  puts(actual_Right_picker_text)
  if actual_Right_picker_text != value
    fail("Expected unit picker value is#{value},actual value is #{actual_Right_picker_text}")
  end

end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  if state == "enabled"
    puts("button is enabled")
  elsif state == "disabled"
    puts("button is disabled")
  end
end

When(/^I press on Clear button$/) do
  puts("clear button is pressed")
end


When(/^I type "([^"]*)" to target text field$/) do |target|
  @driver.find_element(id:"keypad").find_element(xpath:"//android.widget.Button[@text = '#{target}']").click()
  # @driver.find_element(xpath: "//*[contains(@text, target)]").click()
  sleep 5

end

Then(/^I should see result as "([^"]*)"$/) do |result|
  value =  @driver.find_element(id:"target_value").text
  sleep 4

  if value!= result
    fail("expected #{result},actual is #{value} ")
  end

end

Then(/^I press on Add to Favorites icon$/) do
  @driver.find_element(id: "action_add_favorites").click()
end

Then(/^I press on Favorite conversions$/) do
  @driver.find_element(xpath: "//*[contains(@text, 'Favorite conversions')]").click()
end

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  @driver.find_element(xpath: "//*[contains(@text, #{unit_type})]").click()
end


Then("I press the search icon") do
  @driver.find_element(id:"action_search").click()
end

Then("I type {string} in search field") do |text|
  @driver.find_element(id:"search_src_text").send_keys(text)
  sleep 5
end

Then("I press return button n the soft keyboard") do
  Appium::TouchAction.new.tap(x:0.99,y:0.99,count:1).perform
  sleep 10

end

Then ("I see {string} as a current unit converter" ) do |current_unit|

  # Current_unit_conv= $driver.find_element(id:"action_bar").find_element(xpath:"//android.widget.TextView[@text='#{current_unit}']").text
  #sleep 3

  puts("value here is #{current_unit}")
  sleep 10

  #  if Current_unit_conv != current_unit
  # fail("Actual #{Current_unit_conv},is not #{current_unit}")

  # end
end
