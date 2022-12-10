require_relative './ranges_crossing'
require_relative './ranges_overlapping'

result = RangesCrossing.new.call
puts "Result: #{result}"

result = RangesOverlapping.new.call
puts "Result: #{result}"
