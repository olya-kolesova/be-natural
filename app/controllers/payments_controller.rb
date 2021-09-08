class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(state: ['pending', nil]).find(params[:order_id])
  end
end
