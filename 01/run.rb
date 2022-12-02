require_relative './calories_counter'

calories_for_elves = CaloriesCounter.new.call
puts "Maximum calories: #{calories_for_elves.max}"
puts "Top 3 calories sum: #{calories_for_elves.max(3).sum}"