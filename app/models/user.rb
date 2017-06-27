class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :payments
  has_many :user_products
  has_many :products, through: :user_products do
    def in_cart
      where(user_products: {status: 1})
    end
  end
end
