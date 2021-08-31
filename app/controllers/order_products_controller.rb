class OrderProductsController < ApplicationController
  def create
    unless current_user.order.present?
      @order = Order.create(user: current_user)
    else
      @order = current_user.order.first
    end
    @order_product = OrderProduct.create(user: current_user, order: @order)
  end
end
