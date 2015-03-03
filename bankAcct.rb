class BankAccount 

attr_accessor :balance
attr_reader :name

	def initialize(name, balance=50) 
		@name = name
		@balance = balance
	end

	def credit(amount)
		balance = self.balance + amount
		puts "Thank You! Your account now has $#{balance}"
	end

	def debit(amount)
		if self.balance >= amount
			balance = self.balance - amount
			puts "Thank You for you withdrawal! Your new balance is $#{balance}"
		else
			puts "Insufficient Funds to complete this transaction"
		end
	end

	def show_balance
		puts "Your balance is currently $#{balance}"
	end
end

bank_account = BankAccount.new("Shaun")
bank_account.show_balance
bank_account.credit(100)
bank_account.debit(50)

