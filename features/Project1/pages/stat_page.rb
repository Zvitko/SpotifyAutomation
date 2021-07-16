class StatPage
  attr_accessor :statLogin, :noMusicFound

  def initialize(browser)
    @browser = browser
    @statLogin = @browser.a(text: 'Login with Spotify')
    @noMusicFound = @browser.text_field(id: "It seems that you haven't heard
                                            enough music to calculate any favorites from it.")
  end

  def visitStatPage
    @browser.goto 'https://www.statsforspotify.com/'
  end

  def clickStatLogin
    @statLogin.click
  end

  def noMusicFound
  rescue MusicEmpty
    if @noMusicFound == true
      puts 'Try another time range or listen to some more music and try again later!'
      @browser.close
    end
  end
end
