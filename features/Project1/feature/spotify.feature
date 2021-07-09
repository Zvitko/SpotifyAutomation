@Test
Feature: Spotify Login

    Scenario: Signing into Spotify
        Given I launch Home
        And I enter my username or email address
        And I enter my password
        When I click the Login button
        Then I see my Home page and spotify playlist
        
