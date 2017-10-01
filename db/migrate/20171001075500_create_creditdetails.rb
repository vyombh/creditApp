class CreateCreditdetails < ActiveRecord::Migration
  def change
    create_table :creditdetails do |t|
      t.integer :amount
      t.integer :repaidAmount,:default => 0
      t.boolean :isPaid,:default => 0
      t.boolean :requestStatus,:default => 0

      t.timestamps null: false
    end
  end
end
