class LandingPage
  attr_accessor :loginTab

  def initialize(browser)
    @browser = browser
      @loginTab = @browser.a(text: 'Log in')
  end

  def visit
    @browser.goto 'https://www.spotify.com/us/'
  end

  def clickLoginTab
    @loginTab.click
  end
end