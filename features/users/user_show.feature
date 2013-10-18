Feature: Show Users
  As a visitor to the website
  I want to see registered users listed on the homepage
  so I can know if the site has users

  # Admin login and role based differences 
  Scenario: Viewing users with role user
    Given I exist as a user
    When I sign in with valid credentials
    When I look at the list of users
    Then I should see my name
    Then I should_not see edit updation

  # Admin login and role based differences 
  Scenario: Viewing users with role admin
  	Given I exist as an admin
    When I sign in with valid credentials
    When I look at the list of users
    Then I should see my name
    Then I should see edit updation