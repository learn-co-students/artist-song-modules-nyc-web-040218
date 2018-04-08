module Dependencies
  module InstanceMethods
    def to_param #Duplicate
      name.downcase.gsub(' ', '-')
    end
  end

  module ClassMethods

    def find_by_name(name) #Duplicate
      all.detect{|a| a.name == name}
    end

    def reset_all #Duplicate in Artist
      all.clear
    end

    def count #Duplicate
      all.count
    end
  end

end
