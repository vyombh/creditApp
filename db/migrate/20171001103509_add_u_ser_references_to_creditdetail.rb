class AddUSerReferencesToCreditdetail < ActiveRecord::Migration
  def change
    add_reference :creditdetails, :user, index: true, foreign_key: true
  end
end
