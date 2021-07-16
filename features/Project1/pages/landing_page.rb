class LandingPage
  attr_accessor :landingLogin

  def initialize(browser)
    @browser = browser
    @landingLogin = @browser.a(text: 'Log in')
  end

  def visitLandingPage
    @browser.goto 'https://www.spotify.com/us/'
  end

  def clickLandingLogin
    @landingLogin.click
  end
end
