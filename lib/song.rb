require 'pry'
require './lib/concerns/memorable.rb'
require './lib/concerns/findable.rb'
require './lib/concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethod

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
