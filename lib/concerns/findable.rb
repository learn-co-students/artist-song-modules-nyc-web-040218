module Findable
  def find_by_name(name) #Duplicate
    all.detect{|a| a.name == name}
  end
end
