# frozen_string_literal: true

class RangesCrossing
  def call
    sum = 0

    File.readlines('input').each do |line|
      line = line.strip

      sum += process(line)
    end

    sum
  end

  def process(line)
    a, b, c, d = line.scan(/\d+/).map(&:to_i)
    return 1 if (a..b).cover?(c..d)
    return 1 if (c..d).cover?(a..b)

    0
  end
end
