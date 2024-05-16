module Blackjack
  def self.parse_card(card)
    case card
    when "ace"
      11
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    when "ten" 
      10
    when "jack" 
      10
    when "queen" 
      10
    when "king" 
      10
    else
      0
    end

  end

  def self.card_range(card1, card2)
    pCard1 = self.parse_card(card1)
    pCard2 = self.parse_card(card2)
    value = pCard1 + pCard2

    if value >= 4 && value <= 11
      "low"
    elsif value >= 12 && value <= 16
      "mid"
    elsif value >= 17 && value <= 20
      "high"
    elsif value == 21
      "blackjack"
    elsif value == 22
      "double_ace"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    value = self.parse_card(dealer_card)
    range_value = self.card_range(card1, card2)
    ace_o_figure = "false"

    if dealer_card == "ace" || dealer_card == "king" || dealer_card == "jack" || dealer_card == "queen"
      ace_o_figure = "true"
    end

    if range_value == "double_ace"
      pp "P"
    elsif range_value == "blackjack"
      if ace_o_figure == "false"
        pp "W"
      else 
        pp "S"
      end
    elsif range_value == "high"
      pp "S"
    elsif range_value == "mid"
      if value >= 7
        pp "H"
      else
        pp "S"
      end
    elsif range_value == "low"
      pp "H"
    end

  end
end

Blackjack.parse_card("ace")
Blackjack.card_range("ten", "king")
