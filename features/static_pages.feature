Feature: Static pages for my site
  In order to display static pages
  As a user
  I want to see the static pages

  Scenario: Contact page
    When I go to the contact page
    Then I should see "Contact Information"

  Scenario: About page
    When I go to the about page
    Then I should see "About the Site"
  
  
    
