# frozen_string_literal: true

require 'pry'

class CalculateRpsResult
  BID = {
    'A' => :rock,
    'B' => :paper,
    'C' => :scissors
  }.freeze

  ASK = {
    'X' => :rock,
    'Y' => :paper,
    'Z' => :scissors
  }.freeze

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }.freeze

  MOVES_SCORES = {
    rock: 1,
    paper: 2,
    scissors: 3
  }.freeze

  RESULT_SCORES = {
    win: 6,
    draw: 3,
    lost: 0
  }.freeze

  def call
    sum = 0
    File.readlines('input').each do |line|
      next if line == "\n"

      bid = BID[line[0]]
      ask = ASK[line[2]]

      sum += MOVES_SCORES[ask]
      result = :lost if RULES[bid] == ask
      result = :draw if bid == ask
      result = :win if RULES[ask] == bid
      sum += RESULT_SCORES[result]
    end

    sum
  end
end
