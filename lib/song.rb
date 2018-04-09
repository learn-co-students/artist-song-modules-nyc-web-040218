require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def self.all
    @@songs
  end
end
