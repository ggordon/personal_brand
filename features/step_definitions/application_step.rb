# Sign in as an admin
Given /^I sign in as an admin$/ do
  When "I am on the sign in page"
  And "I fill in \"username\" with \"admin\""
  And "I fill in \"password\" with \"passwd\""
  And "I press \"Submit\""
  Then "I should be on the blog page"
end
