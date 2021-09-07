class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @product = Product.new
    @order_products = OrderProduct.order(:created_at)
  end
end
