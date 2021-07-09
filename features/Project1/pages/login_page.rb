
class LoginPage

  def initialize
    @txtUsername = @browser.text_field(id: 'login-username')
    @txtPassword = @browser.text_field(id: 'login-password')
    @btnLogin = @browser.element(id: 'login-button')
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