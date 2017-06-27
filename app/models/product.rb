class Product < ApplicationRecord
  include HasReference

  has_many :user_products

  monetize :price_cents

end
