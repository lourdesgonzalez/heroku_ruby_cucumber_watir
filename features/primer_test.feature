Feature: First Test
 Cucumber first Test

 Scenario: Simple Sum
   Given the first number is 5 
   When the second number is 10
   And I sum those two numbers
   Then the result should be 15

Scenario: Simple Multiplication   
  Given the first number is "2"    
  When the second number is "4"
  And I multiply those two numbers 
  Then the result should be "8"
