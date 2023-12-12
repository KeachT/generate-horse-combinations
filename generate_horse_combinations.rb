puts "\nPlease enter names separated by commas (ex. Glass,Special,El)"
names_input = gets.chomp
names_array = names_input.split(",").uniq

puts "\nCombinations are as follows (Combination of 2 names, without duplication, unordered)"

names_array.combination(2).with_index(1) do |name, index_number|
  puts "#{index_number} : #{name.join(",")}"
end
