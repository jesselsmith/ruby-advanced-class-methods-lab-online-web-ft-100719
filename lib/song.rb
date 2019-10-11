class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.all << self
  end
  def self.create
    new_song = self.class.new
    self.all << new_song
    new_song
  end

end
