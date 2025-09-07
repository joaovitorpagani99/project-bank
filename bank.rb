require_relative 'client'

class Bank
  attr_accessor :number, :client, :balance
    
  def initialize(number, client, balance)
    @number = number
    @client = client
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
    if withdraw(value)
      account_destination.deposit(value)
    end
  end
end