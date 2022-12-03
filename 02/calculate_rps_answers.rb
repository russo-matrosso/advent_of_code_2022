# frozen_string_literal: true

require 'pry'

class CalculateRpsAnswers
  BID = {
    'A' => :rock,
    'B' => :paper,
    'C' => :scissors
  }.freeze

  ASK = {
    'X' => :lost,
    'Y' => :draw,
    'Z' => :win
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
      result = ASK[line[2]]

      case result
      when :draw
        ask = bid
      when :lost
        ask = RULES[bid]
      when :win
        ask = RULES.key(bid)
      end
      sum += MOVES_SCORES[ask]
      sum += RESULT_SCORES[result]
    end

    sum
  end
end
