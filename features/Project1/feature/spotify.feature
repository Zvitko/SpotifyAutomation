@Test
Feature: Spotify Login

  @Test1
  Scenario Outline: Successfully signing into Spotify
    Given I launch Home
    And I click the landing page Log In button
    And Load LoginPage after clicking Log In button
    And I enter valid username or email address as <username>
    And I enter valid password as <password>
    When I click the Login button
    Then I see my Home page
    Examples:
      | username               | password    |
      | testlogin867@gmail.com | password123 |

  @Test2
  Scenario Outline: Enter invalid email address or username
    Given I launch Home
    And I click the landing page Log In button
    And Load LoginPage after clicking Log In button
    And I enter invalid username or email address as <username>
    And I enter valid password as <password>
    When I click the Login button
    Then I see a login <error>
    Examples:
      | username               | password    | error                           |
      | @gmail                 | password123 | Incorrect username or password. |
      | testlogin              | password123 | Incorrect username or password. |
      | testlogin867@gmail.org | password123 | Incorrect username or password. |
      | test@gmail.com         | password123 | Incorrect username or password. |

  @Test3
  Scenario Outline: Enter invalid password
    Given I launch Home
    And I click the landing page Log In button
    And Load LoginPage after clicking Log In button
    And I enter valid username or email address as <username>
    And I enter invalid password as <password>
    When I click the Login button after credentials are entered incorrectly
    Then I see a login <error>
    Examples:
      | username               | password    | error                           |
      | testlogin867@gmail.com | Password123 | Incorrect username or password. |
      | testlogin867@gmail.com | pasword123  | Incorrect username or password. |
      | testlogin867@gmail.com | password    | Incorrect username or password. |
      | testlogin867@gmail.com | 123password | Incorrect username or password. |

  @Test4
  Scenario Outline: No username entered into field
    Given I launch Home
    And I click the landing page Log In button
    And Load LoginPage after clicking Log In button
    And I enter no username or email address as <username>
    And I enter valid password as <password>
    When I click the Login button after credentials are entered incorrectly
    Then I see a username login <error>
    Examples:
      | username | password    | error                                                |
      |          | Password123 | Please enter your Spotify username or email address. |

  @Test5
  Scenario Outline: No password entered into field
    Given I launch Home
    And I click the landing page Log In button
    And Load LoginPage after clicking Log In button
    And I enter valid username or email address as <username>
    And I enter no password as <password>
    When I click the Login button after credentials are entered incorrectly
    Then I see a password login <error>
    Examples:
      | username               | password | error                                                |
      | testLogin867@gmail.com |          | Please enter your Spotify username or email address. |


#    Scenario Outline: Generate top played songs and create a playlist
#        Given I launch StatsForSpotify
#        And I click the Login with Spotify button
#        And I enter my username or email address as <username>
#        And I enter my password as <password>
#        And I agree to allow StatsForSpotify to pull my data
#        When I enter my credentials correctly I will be prompted to choose music by Tracks, Artists, or Genres
#        And I will select Top Tracks
#        Then I see my top 50 songs have been packaged into a playlist


