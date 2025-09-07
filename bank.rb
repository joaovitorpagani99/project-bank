class Bank
  attr_accessor :number, :holder, :balance
    
  def initialize(number, holder, balance)
    @number = number
    @holder = holder
    @balance = balance
  end
    
  def withdraw(value)
    if balance >= value
      self.balance -= value
    else
      puts 'it was not possible to execute withdraw'
    end
  end

  def deposit(value)
    self.balance += value
  end

  def transfer(value, account_destination)
    withdraw(value)
    account_destination.deposit(value)
  end
end