# frozen_string_literal: true

Given(/^I launch Home$/) do
  @LandingPage = LandingPage.new(@browser)
  @LandingPage.visit
end

And(/^I click the Log In button$/) do
  @LandingPage.clickLoginTab
end

And(/^Load LoginPage after clicking Log In button$/) do
  @LoginPage = LoginPage.new(@browser)
end

And(/^I enter my username or email address as (.*)$/) do |username|
  @LoginPage.enterUsername(username)
end

And(/^I enter my password as (.*)$/) do |password|
  @LoginPage.enterPassword(password)
end

When(/^I click the Login button after credentials are entered correctly$/) do
  @LoginPage.clickLoginButton
end

Then(/^I see my Home page and spotify playlist$/) do
  @LoginPage.verifyHomePageHeader
end
