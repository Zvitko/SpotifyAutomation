Given(/^I launch Home$/) do
    @LoginPage = LandingPage.new(@browser)
    @LoginPage.visit
end

And(/^I enter my username or email address$/) do
    @LoginPage.enterUsername('Replace with username or email address')
end

And(/^I enter my password$/) do
    @LoginPage.enterPassword('Replace with Login Password')
end

When(/^I click the Login button$/) do
    @LoginPage.clickLoginTab
end

Then(/^I see my Home page and spotify playlist$/) do
    @LoginPage.verifyHomePageHeader
end