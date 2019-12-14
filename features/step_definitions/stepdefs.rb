require 'rspec'

#Given("the first number is 5") do 
#@first_number = 5
#  end
  
#When("the second number is 10") do 
#@second_number = 10
 # end
  
#When("I sum those two numbers") do
#@third_number = @first_number + @second_number
 # end
  
#Then("the result should be 15") do 
 # expect(@third_number).to eq(15)
  #end


Given(/^the first number is "([^"]*)"$/) do |number|
@first_number = number.to_i
end 

When(/^the second number is "([^"]*)"$/) do |number|
@second_number = number.to_i
end 

When(/^ I multiply those two numbers "([^"]*)"$/) do |number| 
@third_number = @first_number * @second_number  
end 

Then(/^the result should be "([^"]*)"$/) do |number|
    expect(@third_number).to eq(number.to_i)
end 