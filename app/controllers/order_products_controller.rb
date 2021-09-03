class OrderProductsController < ApplicationController
  def index
    @order_products = OrderProduct.all
  end

  def create
    @order = Order.find_by(user: current_user)
    @product = Product.find(params[:product_id])
    # if clicked => quanity += 1
    @order_product = OrderProduct.create!(order: @order, product: @product, quantity: order_product_params[:quantity])
  end

  def update
  end

  def destroy
    @order = Order.find_by(user: current_user)
    @order_product = OrderProduct.find(params[:id])
    @order_product.destroy
    redirect_to order_path(@order)
  end

  private

    def order_product_params
      params.require(:order_product).permit(:quantity)
    end
end
