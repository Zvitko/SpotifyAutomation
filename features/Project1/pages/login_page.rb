# frozen_string_literal: true

require 'pry'

class LoginPage
  attr_accessor :txtUsername, :txtPassword, :btnLogin

  def initialize(browser)
    @browser = browser
    #binding.pry
    @txtUsername = @browser.text_field(id: 'login-username')
    @txtPassword = @browser.text_field(id: 'login-password')
    @btnLogin = @browser.button(id: 'login-button')
  end

  def enterUsername(username)
    @txtUsername.set username
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def clickLoginButton
    @btnLogin.click
  end

  def verifyHomePageHeader
    @browser.element(text: 'Spotify - Web Player').wait_until_present
  end
end
