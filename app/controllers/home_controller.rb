class HomeController < ApplicationController
  def index
  	@products = Product.order(:created_at).reverse_order
  end
end
