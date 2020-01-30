require "pry"
class BankAccount
  attr_reader :user_id, :balance

  def user_id
    @user_id
  end

  @@all = []

  def initialize(user_id, balance)
    @user_id = user_id
    @balance = balance

    @@all << self

  end

  def deposit(amount)
    @balance += amount

  end

  def withdraw(amount)
    self.balance -= amount
    balance -= amount
    @balance -= amount
  end

  def self.all
    @@all
  end

  def self.all_accounts
    all.each do |acct|
      puts "Account Id " + acct.user_id
    end

    self.all.each
  end

end
