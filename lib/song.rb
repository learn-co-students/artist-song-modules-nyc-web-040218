require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end
end
