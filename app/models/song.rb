class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    artist = Artist.create_or_find_by(name: name)
    self.artists << artist
  end
end
