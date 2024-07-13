def get_unique_names
  puts "\nPlease enter names separated by commas (ex. Glass, Special, El)"
  input_names = gets.chomp.split(",")
  input_names.map(&:strip).uniq
end

def print_combinations(names)
  puts "\nCombinations are as follows (Combination of 2 names, without duplication, unordered):"
  names_combination = names.combination(2)
  names_combination.each_with_index { |name, index| puts "#{index + 1} : #{name.join(", ")}" }
end

def main
  unique_names = get_unique_names
  print_combinations(unique_names)
end

main if __FILE__ == $0
