class LineItem < ApplicationRecord
  include ActiveModel::Dirty
  
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
