

Given(/^I click the "([^"]*)" button$/) do |button|
    @browser.select(id: button).click
end 

Given(/^I click the "([^"]*)" button$/) do |button|
    @browser.option(index: 1).click
end 

