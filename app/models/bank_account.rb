class BankAccount < ApplicationRecord
	has_and_belongs_to_many :bank_accounts

  belongs_to :user, optional: true 
  validates_presence_of :user, if: :user_id_present?

  validates :account_number, presence: true, uniqueness: true
  validates :balance, presence: true, numericality: true

  before_validation :load_defaults

  has_many :account_transactions

  def to_s
    account_number
  end

  def load_defaults
    self.balance = 0.00 if new_record?
  end

  private
  def user_id_present?
    user_id.present?
  end
end
