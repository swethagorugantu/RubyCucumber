Feature: Validate search functionality for Google website
Scenario: Search on the Google home page
Given User is on Home page
When User enters valid search item
And User clicks on Search
Then User navigates to search result of links to related websites

Scenario: Search on the Google home page
Given User is on Home page
When User enters invalid search item
And User clicks on Search
Then User navigates to webpage displaying did not match any documents

