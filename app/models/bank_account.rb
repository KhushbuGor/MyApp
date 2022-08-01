class BankAccount < ApplicationRecord
  belongs_to :client
  has_many :nominees

  validates :client, presence: true
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
end
