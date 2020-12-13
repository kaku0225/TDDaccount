require "./bank_account"

RSpec.describe BankAccount do
  describe '存錢功能' do
    it '原本帳戶有10元，存入5元之後，帳戶餘額15元' do
      account = BankAccount.new(10)
      account.deposit 5
      expect(account.balance).to be 15
    end


    it '原本帳戶有10元，存入-5元之後，帳戶餘額10元' do
      account = BankAccount.new(10)
      account.deposit -5
      expect(account.balance).to be 10
    end

  end

  describe '領錢功能' do
    it '原本帳戶有10元，提領5元之後，帳戶餘額5元' do
      account = BankAccount.new(10)
      amount = account.withdraw 5
      expect(amount).to be 5
      expect(account.balance).to be 5
    end

    it '原本帳戶有10元，提領-5元之後，帳戶餘額10元' do
      account = BankAccount.new(10)
      amount = account.withdraw(-5)
      expect(amount).to be 0
      expect(account.balance).to be 10
    end

    it '原本帳戶有10元，提領20元之後，帳戶餘額10元' do
      account = BankAccount.new(10)
      amount = account.withdraw(20)
      expect(amount).to be 0
      expect(account.balance).to be 10
    end
  end
end