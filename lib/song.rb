class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    @@all.each { |song| puts song.name }
  end

end
