

Given(/^I click the "([^"]*)" button$/) do |button|
    @browser.button(text: button).click
end 

Then(/^I should see the message "([^"]*)" $/) do |message|
    expect(@browser.p(id: 'message').text).to eq(message)
end 

Given(/^I set the phrase "([^"]*)" $/) do |phrase|
    @browser.input(index: 1).send_keys(phrase)
end 

Given(/^I click the "([^"]*)" button$/) do |button|
    @browser.button(text: button).click 
end 

Then(/^I should see the message "([^"]*)"$/) do |message|
    expect(browser.p(id: 'message').text).to eq(message)
end 