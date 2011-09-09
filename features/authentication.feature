Feature: Authentication

	Scenario: Log in user
	Given I have a user with email address "noel@safirio.com"
	When I go to the sign in page
	And I fill in "user_email" with "noel@safirio.com"
	And I fill in "user_password" with "password"
	And I press "Sign in"
	Then I should see "Welcome noel@safirio.com"