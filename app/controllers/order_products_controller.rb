class OrderProductsController < ApplicationController
  def index
    @order_products = OrderProduct.all
  end

  def create
    @order = Order.find_or_create_by(user: current_user)
    @product = Product.find(params[:product_id])
    # if clicked => quanity += 1
    @order_product = OrderProduct.create!(order: @order, product: @product, quantity: order_product_params[:quantity])
  end

  def update
  end

  private

    def order_product_params
      params.require(:order_product).permit(:quantity)
    end
end
