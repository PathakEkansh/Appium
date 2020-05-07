Given(/^I land on Home screen$/) do
  @driver.find_element(id: "action_search")
  @driver.find_element(id: "action_add_favorites")
    #@eyes.check_window("launch")
end

When(/^I press on Menu icon$/) do
  @driver.find_element(:accessibility_id,"Open navigation drawer").click()
    #find_ele@driver.ment(accessibility_id: "Open navigation drawer").click

end

Then(/^I should see left side menu$/) do
  @driver.find_element(xpath: "//*[contains(@text, 'Unit Converter')]")
#  @eyes.check_window("Menu")
    #@eyes.check('Menu',Applitools::Selenium::Target.window.el)
end

When(/^I press on My conversions button$/) do
  @driver.find_element(xpath: "//*[contains(@text, 'My conversions')]").click()
end

Then(/^I land on My conversions screen$/) do
  @driver.find_element(xpath: "//*[contains(@text, 'No personal conversion created yet')]")
    # @eyes.check_window('Conversation screen')
end


