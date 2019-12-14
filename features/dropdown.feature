Feature: Heroku tests pasados a cucumber 

Scenario: Dropdown
Given I go to "https://the-internet.herokuapp.com" page
When I click the "Dropdown" link 
And I click the "Please select an option" button
And I click the "option 1" button
#Then I should see "selected"
And I click the option 2