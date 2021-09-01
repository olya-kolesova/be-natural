class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @order = Order.find(params[:id])
    @order_products = OrderProduct.all
  end

end
