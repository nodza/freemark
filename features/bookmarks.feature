Feature: Bookmarks

  Scenario: Not logged in
    When I go to the new bookmarks page
    Then I should see "Sign In"
    And I should see "Email"
    And I should see "Password"
    
  Scenario: Logged in
    Given I am logged in
    When I go to the new bookmarks page
    Then I should see "Title"
    And I should see "URL"
    And I should see "Tags"
    And I should see "Notes"
    
  Scenario: Creating a Bookmark
    Given I am logged in
    When I go to the new bookmarks page
    And I fill in "bookmark[title]" with "Google"
    And I fill in "bookmark[url]" with "http://google.com"
    And I fill in "bookmark[tags]" with "search engine"
    And I fill in "bookmark[notes]" with "Well, it's google. It's a verb now!"
    And I press "Create Bookmark"
    Then I should see "Google"
    And I should see "http://google.com"