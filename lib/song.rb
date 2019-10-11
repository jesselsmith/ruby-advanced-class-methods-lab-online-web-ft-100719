class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.save
    self.class.all << self
  end
  def self.create
    new_song = self.class.new
    self.class.all << new_song
    new_song
  end

end
