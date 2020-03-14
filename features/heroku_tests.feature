Feature: Heroku tests

Background:
    Given I go to "https://the-internet.herokuapp.com" page

 Scenario: Add / Remove Elements    
    When I click "Add\/Remove Elements"     
    And I click the "Add Element" button     
    Then I should see the "Delete" button 

 Scenario: Form Authentication       
    When I click the "Form Authentication" link 
    And I set the username "tomsmith"   
    And I set the password "SuperSecretPassword!"
    And I click the "Login" button 
    Then I should see the message "Secure Area" 

 Scenario: Floating Menu 
    When I click the "Floating Menu" link 
    And I scroll down the page to the bottom
    Then I should see the floating menu   

Scenario: Dynamic Controls
    When I click the "Dynamic Controls" link
    And I click the "Enable" button text 
    Then I should see the message "It's enabled!" after clicking the button
    And I set the message "hola mundo"
    And I click the "Disable" button  
    Then I should see the message "It's disabled!" after clicking the button 

Scenario: Dropdown Test
    When I click the "Dropdown" link 
    And I select the "Option 1" of dropdown
    Then I should see the dropdown first option is selected
    #When I click the second option button 
    #Then I should see the second option button is selected

Scenario: Checkboxes
    When I click the "Checkboxes" link
    And I click the second checkbox 
    Then I should see the second checkbox is unchecked

Scenario: Broken Images
    And I click the "Broken Images" link 
    Then I should see the first image is broken