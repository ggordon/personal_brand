Feature: Resume
  As a user
  I want view the resume

  Scenario: view the resume
    Given A resume exists
    When I go to the resume page
    Then I should see "Resume"
    And I should see "Gogo Gordon"
    And I should see "Watch Dog"
    And resume exists
  
  
  
  
