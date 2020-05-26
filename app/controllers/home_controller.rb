class HomeController < ApplicationController
  def index
    @billboards = Billboard.all
    @artists = Artist.all
    @songs = Song.all
    @rankings = Ranking.all
  end

  def billboards
    # think about how we might want the billboard page to look
    @billboards = Billboard.all
    # @billboards.first.songs
  end
end
