class UserProduct < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product

  enum status: {unsold: 0, waiting: 1, purchased: 2}

  def place_in_cart(amount)
    update(status: :waiting, amount: amount)
  end
end
