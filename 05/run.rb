require_relative './cargo_result'
require_relative './cargo_result_9001'

result = CargoResult.new.call
puts "Result: #{result}"

result = CargoResult9001.new.call
puts "Result: #{result}"
