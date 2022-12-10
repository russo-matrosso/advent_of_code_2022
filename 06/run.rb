require_relative './radio_parser'

result = RadioParser.new.call
puts "Result: #{result}"
