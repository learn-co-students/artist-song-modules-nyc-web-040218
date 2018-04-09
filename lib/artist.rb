require './lib/concerns/memorable.rb'
require './lib/concerns/findable.rb'
require './lib/concerns/paramable.rb'
require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethod, Memorable::InstanceMethod

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
