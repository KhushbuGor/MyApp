class CreateNominees < ActiveRecord::Migration[7.0]
  def change
    create_table :nominees do |t|
      t.bigint :main_account_id, null: false
      t.bigint :nominee_account_id, null: false
      t.string :weightage
      t.timestamps
    end
  end
end
