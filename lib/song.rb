class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name)
    @name = name
  end

  def self.all
    @@all << self
  end

  def save
    self.class.all << self
  end
  
  def self.create
    @name.each { |song| puts song.name }
  end

end
