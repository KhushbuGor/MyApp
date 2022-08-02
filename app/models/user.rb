class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_save :create_account
  has_one :bank_account
  
  def create_account
    if BankAccount.find_by(user_id: self.id).blank?
      bank_account = BankAccount.create(balance: 0,account_number: SecureRandom.hex(10),user_id: self.id)
      self.update(bank_account_id: bank_account.id)
    end
  end
end
