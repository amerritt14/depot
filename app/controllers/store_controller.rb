class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
    @count = increment_session_counter
  end

  def increment_session_counter
    session[:counter] = 0 if session[:counter].nil?
    session[:counter] += 1
  end
end
