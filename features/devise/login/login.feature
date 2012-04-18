Feature: Login to pathfinder
 In order to access the system
 As a register user
 I want to login to the system

Background:
 Given I am on the homepage
 And I am a register user with user email "shripad@gmail.com" and password "shripad"
 When I follow "Login" link

Scenario: Successful login to system
 Then I should see "Sign in"
 And I fill in "Email" with "shripad@gmail.com"
 And I fill in "Password" with "shripad"
 When I press "Sign in"
 Then I should see "Signed in successfully."

Scenario: Un-Successful login to system
 Then I should see "Sign in"
 And I fill in "Email" with "shripad1@gmail.com"
 And I fill in "Password" with "shripad1"
 When I press "Sign in"
 #Then I should see "Signed in successfully."
