class AddUserToBankAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :bank_accounts, :user, null: false, foreign_key: true
  end
end
