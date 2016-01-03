# Release 3:

class Profile

  attr_accessor :age
  attr_accessor :name
  attr_accessor :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end
end

instance_of_profile = Profile.new

p instance_of_profile.age
p instance_of_profile.name
p instance_of_profile.occupation

instance_of_profile.age = 28
instance_of_profile.name = "Taylor"
instance_of_profile.occupation = "Rare Coins Trader"

p instance_of_profile.age
p instance_of_profile.name
p instance_of_profile.occupation

t = [[‘x','x','x'],['y','y',''],['z','z','z']]

t.each do |row|
  row.each do |cell|
    if cell == ""
      cell = "X"
    end
  end
end
