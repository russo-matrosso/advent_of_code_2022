require_relative './calculate_rps_result'
require_relative './calculate_rps_answers'

result = CalculateRpsResult.new.call
puts "Result: #{result}"

result = CalculateRpsAnswers.new.call
puts "Result: #{result}"