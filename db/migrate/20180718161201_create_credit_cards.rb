class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :number, null: false
      t.integer :cvv, null: false
      t.string :exp_month, null: false
      t.string :exp_year, null: false
      t.string :card_name, null: false

      t.timestamps
    end
  end
end
