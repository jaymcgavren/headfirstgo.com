# This class allows you to perform various operations
# on the words in a string.
class WordSplitter

  include Enumerable

  # The string to split into words.
  attr_accessor :string

  # Creates a new instance with its string
  # attribute set to the given string.
  def initialize(string)
    self.string = string
  end

  # Passes each word in the string to a block, one
  # at a time.
  def each
    string.split(" ").each do |word|
      yield word
    end
  end

end
