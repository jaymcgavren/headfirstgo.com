if "Tel: 555-0199" =~ /555-0199/
  puts "Found phone number."
end

if "Tel: 555-0148" =~ /\d\d\d-\d\d\d\d/
  puts "Found phone number."
end

if "Tel: 555-0148" =~ /\d+-\d+/
  puts "Found phone number."
end

if "Tel: 555-0148" =~ /\d{3}-\d{4}/
  puts "Found phone number."
end

if "Tel: 555-0148" =~ /(\d{3}-\d{4})/
  puts "Found phone number: #{$1}"
end

puts "Tel: 555-0148".sub(/\d{3}-\d{4}/, '***-****')
