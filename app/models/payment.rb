class Payment < ApplicationRecord
  belongs_to :user, optional: true

  has_many :payment_line_items
  has_many :products, through: :payment_line_items,
            source_type: "Product", source: "buyable"

  monetize :price_cents

  enum status: [:created, :succeeded]

  def total_cost
    products.map(&:price).sum
  end

  def create_line_items(products)
    products.each do |product|
      payment_line_items.create!(
          buyable: product, price_cents: product.price.cents)
    end
  end

end
