# frozen_string_literal: true

Given(/^I launch Home$/) do
  @LandingPage = LandingPage.new(@browser)
  @LandingPage.visitLandingPage
end

And(/^I click the landing page Log In button$/) do
  @LandingPage.clickLandingLogin
end

And(/^Load LoginPage after clicking Log In button$/) do
  @LoginPage = LoginPage.new(@browser)
end

And(/^I enter valid username or email address as (.*)$/) do |username|
  @LoginPage.enterUsername(username)
end

And(/^I enter valid password as (.*)$/) do |password|
  @LoginPage.enterPassword(password)
end

When(/^I click the Login button$/) do
  @LoginPage.clickLoginButton
end

Then(/^I see my Home page$/) do
  @LoginPage.verifyHomePageHeader
end

And(/^I enter invalid username or email address as (.*)$/) do |username|
  @LoginPage.enterUsername(username)
end

When(/^I click the Login button after credentials are entered incorrectly$/) do
  @LoginPage.clickLoginButton
end

Then(/^I see a login (.*)$/) do |error|
  @LoginPage.loginError(error)
end

And(/^I enter invalid password as (.*)$/) do |password|
  @LoginPage.enterPassword(password)
end

And(/^I enter no username or email address as (.*)$/) do |username|
  @LoginPage.enterUsername(username)
end

And(/^I enter no password as (.*)$/) do |password|
  @LoginPage.enterPassword(password)
end

Then(/^I see a username login (.*)$/) do |error|
  @LoginPage.usernameLoginError(error)
end

Then(/^I see a password login (.*)$/) do |error|
  @LoginPage.passwordLoginError(error)
end