class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :title
      t.string :description
      t.decimal :amount
      t.date :due_date
      t.boolean :paid

      t.timestamps
    end
  end
end
