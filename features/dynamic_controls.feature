Feature: Heroku tests pasados a cucumber 

Scenario: Dynamic Controls
Given I go to "https://the-internet.herokuapp.com" page
When I click the 'Dynamic Controls' link
And I click the 'Enabled' button 
Then I should see the message "It's enabled"
And I set the phrase "hola mundo"
And I click the "Disabled" button
Then I should see the message "It's disabled"