
class LandingPage
  attr_accessor :loginTab,:txtUsername,:txtPassword,:btnLogin

  def initialize(browser)
    @browser = browser
      @loginTab = @browser.a(text: 'Log in')
      @txtUsername = @browser.text_field(id: 'login-username')
      @txtPassword = @browser.text_field(id: 'login-password')
      @btnLogin = @browser.element(id: 'login-button')
  end

  def visit
    @browser.goto 'https://www.spotify.com/us/'
  end

  def clickLoginTab
    @loginTab.click
  end
end