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
    new_song = self.new
    self.all << new_song
    new_song
  end
  def self.new_by_name(name)
    new_song = self.new
    new_song.name = name
    new_song
  end
  def self.create_by_name(name)
    new_song = self.create
    new_song.name = name
    new_song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  def self.find_or_create_by_name(name)
    existing_song = self.find_by_name(name)
    if existing_song
      existing_song
    else
      self.create_by_name(name)
    end
  end
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end
end
