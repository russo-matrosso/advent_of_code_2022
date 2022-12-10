# frozen_string_literal: true

class CargoResult9001
  def call
    crates = [
      %w[H B V W N M L P],
      %w[M Q H],
      %w[N D B G F Q M L],
      %w[Z T F Q M W G],
      %w[M T H P],
      %w[C B M J D H G T],
      %w[M N B F V R],
      %w[P L H M R G S],
      %w[P D B C N]
    ]

    File.readlines('input').each do |line|
      number, from, to = line.scan(/\d+/).map(&:to_i)
      crates[to - 1].append(*crates[from - 1].pop(number))
    end

    crates.map(&:last).join('')
  end
end
