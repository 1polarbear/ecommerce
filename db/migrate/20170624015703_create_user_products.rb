class CreateUserProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_products do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
