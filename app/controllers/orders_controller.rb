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
    @order.candle = @candle
    @order.save
	   redirect_to candle_orders_path(@candle)
	end

  private

  def find_candle
    @candle = Candle.find(params[:candle_id])
  end

  def order_params
    params.require(:order).permit(:quantity)
  end
end
