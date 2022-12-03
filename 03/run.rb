require_relative './calculate_sum_of_duplicates'
require_relative './calculate_sum_of_badges'

result = CalculateSumOfDuplicates.new.call
puts "Result: #{result}"

result = CalculateSumOfBadges.new.call
puts "Result: #{result}"