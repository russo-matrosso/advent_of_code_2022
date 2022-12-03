# frozen_string_literal: true

class CalculateSumOfDuplicates
  def call
    sum = 0

    File.readlines('input').each do |line|
      next if line == "\n"

      sum += process(line.strip)
    end

    sum
  end

  def process(line)
    left, right = line.chars.each_slice(line.length / 2).map(&:to_a)
    duplicate = (left & right).first

    if duplicate >= 'a' && duplicate <= 'z'
      lowercase_letters[duplicate]
    else
      lowercase_letters[duplicate.downcase] + 26
    end
  end

  def lowercase_letters
    @lowercase_letters ||= ('a'..'z').to_a.each_with_object({}).with_index(1) do |(letter, hash), i|
      hash[letter] = i
    end
  end
end
