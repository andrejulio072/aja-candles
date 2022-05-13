class OrdersController < ApplicationController
  before_action :find_candle

  def index
    @orders = Order.all
	end

	def new
		@order = Order.new
	end

  def create
	  @order = Order.new(order_params)
	  @order.candle = @order
    @order.save
	  # redirect_to order_path(@order)
	end

  private

  def find_candle
    @candle = Candle.find(params[:candle_id])
  end

  def order_params
    params.require(:order).permit(:quantity)
  end
end
