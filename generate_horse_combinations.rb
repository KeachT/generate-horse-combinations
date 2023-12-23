def main
  puts "\nPlease enter names separated by commas (ex. Glass, Special, El)"
  input_names = gets.chomp
  unique_names = input_names.split(",").uniq

  puts "\nCombinations are as follows (Combination of 2 names, without duplication, unordered):"

  unique_names.combination(2).each_with_index do |name, index|
    puts "#{index + 1} : #{name.join(",")}"
  end
end

if __FILE__ == $0
  main
end
