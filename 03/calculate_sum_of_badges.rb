# frozen_string_literal: true

class CalculateSumOfBadges
  def call
    sum = 0

    File.readlines('input').each_slice(3) do |lines|
      next if lines.include?("\n")

      sum += process(lines.map(&:strip))
    end

    sum
  end

  def process(lines)
    first, second, third = lines.map { |line| line.split('') }
    badge = (first & second & third).first

    if badge >= 'a' && badge <= 'z'
      lowercase_letters[badge]
    else
      lowercase_letters[badge.downcase] + 26
    end
  end

  def lowercase_letters
    @lowercase_letters ||= ('a'..'z').to_a.each_with_object({}).with_index(1) do |(letter, hash), i|
      hash[letter] = i
    end
  end
end
