#step definitions

Given(/^I go to "([^"]*)" page$/) do |page| 
    @browser = Watir::Browser.new 
    @browser.goto(page) 
    sleep 5 
end

Given(/^I click the "([^"]*)" link$/) do |link| 
    @browser.a(text: link).click
end
    
Given(/^I set the username "([^"]*)"$/) do |username| 
    @browser.input(id: 'username').send_keys(username)
    sleep 5
end   
 
Given(/^I set the password "([^"]*)"$/) do |password|
    @browser.input(id: 'password').send_keys(password) 
    sleep 5
end 

Given(/^I click the "([^"]*)" button$/) do |button|
    @browser.button(text: button).click
    sleep 5
end 

Then(/^I should see the message "([^"]*)"$/) do |message|
    expect(@browser.h2(text: message).text).to eq(message)
end 

#Then 