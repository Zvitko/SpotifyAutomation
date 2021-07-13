@Test
Feature: Spotify Login

    Scenario Outline: Signing into Spotify
        Given I launch Home
        And I click the Log In button
        And Load LoginPage after clicking Log In button
        And I enter my username or email address as <username>
        And I enter my password as <password>
        When I click the Login button after credentials are entered correctly
        Then I see my Home page and spotify playlist
        Examples:
            | username               | password    |
            | testlogin867@gmail.com | password123 |
