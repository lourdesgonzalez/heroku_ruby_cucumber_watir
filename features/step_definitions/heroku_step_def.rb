#step definitions

Given(/^I go to "([^"]*)" page$/) do |page| 
    @browser = Watir::Browser.new 
    @browser.goto(page) 
    #@context = HomePage.new(@browser)
    sleep 5 
end

 Given(/^I click the "([^"]*)" link$/) do |link|
    @browser.a(text: link).click

    @context.link(link).click 
    # page = link.gsub(/(?:^|_)([a-z])/) do $1.up
    @browser = Watir::Browser.new
    browser.goto(page)
end 

When(/^I click the "([^"]*)" link$/) do |link|
    @browser.a(text: 'Floating Menu').click
end 

And(/^I scroll down the page to the bottom$/) do
    @browser.scroll.to :bottom
    sleep 5
end 

Then(/^I should see the floating menu$/) do
  @browser.div(id: "menu").present?
end

Then(/^I should see the message "([^"]*)" after clicking the button$/) do |message|
    expect(@browser.p(id: 'message').text).to eq(message)
end  

Given(/^I set the message "([^"]*)"$/) do |message|
    @browser.input(index: 1).send_keys(message)
end 

Given(/^I go to page "([^"]*)"$/) do |page|
    page = page + "Page"
    @context = Object.const_get(page).new(@browser)
end
    
Given(/^I set the username "([^"]*)"$/) do |username| 
    @browser.input(id: 'username').send_keys(username)
    sleep 5
end   
 
Given(/^I set the password "([^"]*)"$/) do |password|
    @browser.input(id: 'password').send_keys(password) 
    sleep 5
end 

Then(/^I should see the message "([^"]*)"$/) do |message|
    expect(@browser.h2(text: message).text).to eq(message)
end 


Given(/^I click the "([^"]*)" button$/) do |button|
    #@browser es una instancia de la clase watir que nos permite manejar el navegador 
    #.select es la funcion o el metodo para llamar a los elementos html con el tag select 
    #id es el atributo que usamos para identificar 
    #@browser.select(id: button).click
    @context.button(text: 'Disable').click  
end 

Given(/^I click the dropdown first option$/) do 
    @context.option(1).click
end 

Then(/^I should see the dropdown first option is selected$/) do 
    expect(@context.option(1).attribute_value('selected')).to eq "true" 
end

When(/^I click the second option button$/) do 
    @context.option(2).click
end

Then(/^I should see the second option button is selected$/) do 
    expect(@context.option(2).attribute_value('selected')).to eq "true"
end 


Given(/^I click the "([^"]*)" button text$/) do |button|
    #@browser es una instancia de la clase watir que nos permite manejar el navegador 
    #.select es la funcion o el metodo para llamar a los elementos html con el tag select 
    #id es el atributo que usamos para identificar 
    #@browser.select(id: button).click
    @browser.button(text: 'Enable').click 
end 

Given(/^I select the "([^"]*)" of dropdown$/) do |option|
    #@browser es una instancia de la clase watir que nos permite manejar el navegador 
    #.select es la funcion o el metodo para llamar a los elementos html con el tag select 
    #id es el atributo que usamos para identificar 
    #@browser.select(id: button).click
    #@browser.select(id: 'dropdown').click
    
    @context.dropdown.select(option)

end 


# regex "([^"]*)" sirve para utilizar argumento en feature y poder ser utilizado en el step 
Given(/^I click the second checkbox$/) do 
    @browser.input(index: 1 ).click 
end 

Then(/^I should see the second checkbox is unchecked$/) do  
    expect(@browser.input(index: 1 ).attribute_value('checked')).to eq nil
end

Then(/^I should see the first image is broken$/) do 
    if @browser.img(index: 1).loaded?
       puts 'true'
    else
        puts 'false'
    end
end