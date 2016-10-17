class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @reviews = @product.reviews
    @review  = Review.new
    @rating_avg = rating_avg
  end

  def rating_avg
    Review.where(product_id: @product.id).average(:rating) || 0
  end

end
