
# regex "([^"]*)" sirve para utilizar argumento en feature y poder ser utilizado en el step 
Given(/^I click the second checkbox$/) do 
    @browser.input(index: 1 ).click 
end 

Then(/^I should see the second checkbox is unchecked$/) do  
 expect(@browser.input(index: 1 ).attribute_value('checked')).to eq nil
end

