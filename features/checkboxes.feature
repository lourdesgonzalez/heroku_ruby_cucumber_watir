Feature: Heroku tests pasados a cucumber 

Scenario: Checkboxes
Given I go to "https://the-internet.herokuapp.com" page
When I click the "Checkboxes" link
And I click the second checkbox 
Then I should see the second checkbox is unchecked
