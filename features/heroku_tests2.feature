Feature: Heroku tests pasados a cucumber

 Scenario: Form Authentication     
 Given I go to "https://the-internet.herokuapp.com" page    
 When I click the "Form Authentication" link 
 And I set the username "tomsmith"   
 And I set the password "SuperSecretPassword!"
 And I click the "Login" button 
 Then I should see the message "Secure Area" 