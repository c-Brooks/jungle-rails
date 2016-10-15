class ReviewsController < ApplicationController

  # POST /products/:product_id/reviews
  def new
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    puts 'review params:', review_params
    @review = Review.new(review_params)
    @review.user = current_user


    # @review.product_id = @product.id
    puts 'review:', @review.inspect
    if @review.save
      redirect_to product_path(@product)
    else
      puts "\nFAILED: #{@review.inspect}"
      redirect_to root_path
    end
  end

  private

    def review_params
      params.require(:review).permit(:product_id, :description, :rating)
    end
end
