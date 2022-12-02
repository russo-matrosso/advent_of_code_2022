# frozen_string_literal: true

class CaloriesCounter
  def call
    elves = []
    current_elf = 0

    File.readlines('input').each do |line|
      if line == "\n"
        elves << current_elf
        current_elf = 0
      end

      current_elf += line.to_i
    end
    elves
  end
end
