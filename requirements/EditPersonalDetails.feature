Feature: Edit personal details
  As a user
  So that I can handle my personal information
  I want to edit my uploaded details

Scenario: Edit personal information of user's page
  Given I am on Home Page
  Given I am a register user
  Given I am logged in
  When I select "My Profile Page"
  Then I should see the details of my personal details
  When I choose "Edit"
  Then I should edit my personal information
  When I choose "Confirm"
  Then I should see a succeed message
  And changes must be done
  
Scenario: Failed edit personal information of user's page
  Given I am on Home Page
  Given I am a register user
  Given I am logged in
  When I select "My Profile Page"
  Then I should see the details of my personal details
  When I choose "Edit"
  Then I should edit my personal information
  When I choose "Confirm"
  Then I should see a warning message
  Then I should return to My Profile Page
  And changes must not be done
