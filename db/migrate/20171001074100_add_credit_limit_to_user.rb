class AddCreditLimitToUser < ActiveRecord::Migration
  def change
    add_column :users, :cl, :integer,:default => 100000
  end
end
