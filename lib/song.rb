class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def self.create
    song = Song.new
    @@all << song
    song
  end

  def self.find_by_name
    @@all.find do |current_song|
      current_song.name == self.name
    end
  end

end
