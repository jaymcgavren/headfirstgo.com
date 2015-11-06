class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  # NOTE: Required keyword arguments are reported as a syntax error in
  # Ruby 2.0. You'll need to either upgrade to Ruby 2.1 (or later), or
  # provide defaults for "age" and "occupation".
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end

end

p Candidate.new("Carl Barnes", age: 49, occupation: "Attorney")
