class Nominee < ApplicationRecord
  has_and_belongs_to_many :bank_accounts
end
