Feature: Heroku tests pasados a cucumber

 Scenario: Add / Remove Elements    
 Given I go to "https://the-internet.herokuapp.com" page    
 When I click "Add\/Remove Elements"     
 And I click the "Add Element" button     
 Then I should see the "Delete" button