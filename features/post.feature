Feature: Posts
  In order to be a blog
  As an admin
  I want to create a post
  
  Scenario: new post page
    Given I am on the blog page
    When I follow "new post"
    Then I should be on the new post page

  Scenario: create and edit a post
    Given I am on the new post page
    When I fill in "title" with "First Post"
    And I fill in "body" with "loren ipsum"
    And I press "Create"
    Then I should be on the post page for "first-post"
    When I follow "edit"
    Then I should be on the edit post page for "first-post"
    When I fill in "title" with "Edited First Post"
    And I press "Create"
    Then I should be on the post page for "edited-first-post"
   
  
  
  

  
  
  

  
