class AddQuantityToUserProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :user_products, :quantity, :integer
  end
end
