module Chess
  # TODO: define the 'RANKS' constant
  RANKS = 1..8
  # TODO: define the 'FILES' constant
  FILES = 'A'..'H'
  
  def self.valid_square?(rank, file)
    rank_a = RANKS.to_a
    files_a = FILES.to_a

    rankBoo = RANKS.include?(rank)
    fileBoo = FILES.include?(file)

    if rankBoo == true && fileBoo == true
      true
    else
      false
    end    
  end

  def self.nick_name(first_name, last_name)
    part1 = first_name[0..1]
    part2 = last_name[last_name.size - 2..last_name.size - 1]
    final_name = part1 + part2

    final_name.upcase
  end

  def self.move_message(first_name, last_name, square)
    rank = square[1].to_i
    file = square[0]
    
    if self.valid_square?(rank, file) == true
      pp "#{self.nick_name(first_name, last_name)} moved to #{square}"
    else
      pp "#{self.nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

Chess.move_message("Jerry", "Harris", "C9")
