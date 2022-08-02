class CreateNominees < ActiveRecord::Migration[7.0]
  def change
    create_table :nominees do |t|
      t.references :bank_account, null: false, foreign_key: true
      t.string :weightage
      t.integer :main_account_id

      t.timestamps
    end
  end
end
