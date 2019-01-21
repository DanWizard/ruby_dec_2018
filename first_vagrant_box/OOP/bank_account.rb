class BankAccount
	attr_accessor :checking, :saving, :account_number, :interest_rate, :num_of_accounts
	@@num_of_accounts = 0
	def initialize
		@checking = 0
		@saving = 0
		@account_number = acc_num
		@interest_rate = 0.01
		@@num_of_accounts += 1
	end

	
	def account_info
		p "checking: #{@checking} saving: #{@saving} account_number: #{@account_number} interest_rate: #{interest_rate}"
		self
	end
	def checking_info
		p "checking: #{@checking}"
		self
	end
	def saving_info
		p "saving: #{@saving}"
		self
	end
	def deposit num, acc1
		if num < 0
			p "use withdraw method"
		end
		if acc1 == 'save'
			@saving += num
		elsif acc1 == 'check'
			@checking += num
		else
			p "entry was not a string or invalid location"
		end
		self
	end
	
	def withdraw num, acc2
		if acc2 == 'save' and num <= @saving
			@saving -= num
		elsif acc2 == 'check' and num <= @checking
			@checking -= num 
		else
			p "entry was not a string, insufficient funds, or invalid withdraw location"
		end
		self
	end
	private
		def acc_num
			num = rand(1..100000000000000000000)
			num
		end
end

boa = BankAccount.new
boa2 = BankAccount.new

boa.deposit(10, 'save').saving_info.withdraw(10, 'save').saving_info

