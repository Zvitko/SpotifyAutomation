# frozen_string_literal: true

require 'pry'

class LoginPage
  attr_accessor :txtUsername, :txtPassword, :loginButton, :loginErrorCode,
                :usernameLoginErrorCode, :passwordLoginErrorCode

  def initialize(browser)
    @browser = browser
    #binding.pry
    @txtUsername = @browser.text_field(id: 'login-username')
    @txtPassword = @browser.text_field(id: 'login-password')
    @loginButton = @browser.button(id: 'login-button')
    @loginErrorCode = @browser.span(text: 'Incorrect username or password.')
    @usernameLoginErrorCode = @browser.label(text: 'Please enter your Spotify username or email address.')
    @passwordLoginErrorCode = @browser.label(text: 'Please enter your password.')
  end

  def enterUsername(username)
    @txtUsername.set username
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def clickLoginButton
    @loginButton.click
  end

  def verifyHomePageHeader
    @browser.element(text: 'Spotify - Web Player').wait_until_present
  end

  def loginError(error)
    @loginErrorCode.text.include? error
  end

  def usernameLoginError(error)
    @usernameLoginErrorCode.text.include? error
  end

  def passwordLoginError(error)
    @passwordLoginErrorCode.text.include? error
  end

end
