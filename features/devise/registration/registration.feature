Feature: Registration of user
 In order to login to pathfinder
 As a pathfinder enthusiastic
 I want to register to pathfinder

Background:
 Given I am on the homepage
 When I follow "Register" link
 Then I should see "Sign up"

Scenario: Register to pathfinder with valid values
 And I fill in "Name" with "shripad"
 And I fill in "Email" with "s.joshi@gmail.com"
 And I fill in "Password" with "123123"
 And I fill in "Password confirmation" with "123123"
 When I press "Sign up"
 And I should see "Welcome! You have signed up successfully."

Scenario: Register to pathfinder for blank
 When I press "Sign up"
 And I should see "Email can't be blank"
 And I should see "Password can't be blank"
 And I should see "Name can't be blank"

Scenario: Register to pathfinder with only name
 And I fill in "Name" with "shripad"
 When I press "Sign up"
 Then I should see "Email can't be blank"
 And I should see "Password can't be blank"

Scenario: Register to pathfinder with only name, and email
 And I fill in "Name" with "shripad"
 And I fill in "Email" with "s.joshi@gmail.com"
 When I press "Sign up"
 Then I should see "Password can't be blank"

Scenario: Register to pathfinder with only name, email and password
 And I fill in "Name" with "shripad"
 And I fill in "Email" with "s.joshi@gmail.com"
 And I fill in "Password" with "123123"
 When I press "Sign up"
 Then I should see "Password doesn't match confirmation"

Scenario: Register to pathfinder with unique name
 And there is a user called "Shripad"
 And I fill in "Name" with "Shripad"
 And I fill in "Email" with "shripad@gmail.com"
 And I fill in "Password" with "shripad"
 And I fill in "Password confirmation" with "shripad"
 When I press "Sign up"
 Then I should see "Name has already been taken"

Scenario: Register to pathfinder with unique email
 And there is a user email called "shripad1@gmail.com"
 And I fill in "Name" with "Shripad1"
 And I fill in "Email" with "shripad1@gmail.com"
 And I fill in "Password" with "shripad1"
 And I fill in "Password confirmation" with "shripad1"
 When I press "Sign up"
 Then I should see "Email has already been taken"