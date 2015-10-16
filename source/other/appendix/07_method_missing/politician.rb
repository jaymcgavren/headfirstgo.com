class Politician
  def method_missing(method_name, argument)
    puts "I promise to #{method_name.to_s} #{argument}!"
  end
end

politician = Politician.new
politician.lower("taxes")
politician.improve("education")
