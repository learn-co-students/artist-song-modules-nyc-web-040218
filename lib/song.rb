require 'pry'

class Song
  extend Dependencies::ClassMethods
  include Dependencies::InstanceMethods

  # extend Memorable
  # extend Findable
  # include paramable

  attr_accessor :name, :artist

  @@all = []

  def initialize
    @@all << self
  end

  def self.all #Duplicate
    @@all
  end
end
