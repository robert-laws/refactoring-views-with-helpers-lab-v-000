class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    artist = Artist.new(name: name)
    artist.save
    self.artists << artist
  end
end
