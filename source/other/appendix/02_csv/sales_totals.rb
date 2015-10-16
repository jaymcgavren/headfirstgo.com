require 'csv'
CSV.foreach("sales.csv", headers: true) do |row|
  puts "#{row['Associate']}: #{row['Sales Total']}"
end
