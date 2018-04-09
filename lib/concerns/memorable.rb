module Memorable
  #when using EXTEND all methods are assumed to have self. prefix as a class method
  module ClassMethods
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end


end
