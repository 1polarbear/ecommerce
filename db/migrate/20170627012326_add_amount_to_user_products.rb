class AddAmountToUserProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :user_products, :amount, :integer
  end
end
