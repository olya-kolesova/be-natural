class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @order_products = OrderProduct.all
  end

end
