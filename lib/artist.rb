require 'pry'

class Artist
  extend Dependencies::ClassMethods
  include Dependencies::InstanceMethods

  # extend Memorable
  # extend Findable
  # include paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def self.all #Duplicate
    @@artists
  end

end
