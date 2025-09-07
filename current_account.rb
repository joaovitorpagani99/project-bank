require_relative 'account'
class Current_Account < Account

  attr_accessor :limit


  def initialize(number, client, balance, limit)
    super(number, client, balance)
    @limit = limit
  end

  def withdraw (value)
    if (balance + limit) >= value
      self.balance -= value
    else
      puts 'No possible withdraw'
    end
  end
end