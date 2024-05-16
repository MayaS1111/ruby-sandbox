module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      interest_rate = 3.213
      return  interest_rate
    elsif balance < 1000
      interest_rate = 0.5
      return  interest_rate
    elsif balance >= 1000 && balance < 5000
      interest_rate = 1.621
      return interest_rate
    else
      interest_rate = 2.475
      return interest_rate
    end
  end

  def self.annual_balance_update(balance)
    interest_rate = self.interest_rate(balance)

    if interest_rate == 3.213
      rate = interest_rate * 0.01
      return (balance * rate) - balance * -1
    else
      rate = interest_rate * 0.01
      return (balance * rate) + balance
    end
    
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year = 0
    balance = current_balance

    until balance >= desired_balance
      balance = self.annual_balance_update(balance)
      year += 1
    end

    pp year
  end
end

SavingsAccount.annual_balance_update(-0.123)
