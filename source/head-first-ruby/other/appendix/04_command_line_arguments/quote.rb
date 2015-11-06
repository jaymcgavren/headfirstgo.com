file = File.open(ARGV[0]) do |file|
  file.each do |line|
    puts "> " + line
  end
end
