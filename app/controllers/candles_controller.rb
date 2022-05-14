class CandlesController < ApplicationController
  def index
    @candles = Candle.all
  end

  def new
    @candle = Candle.new
  end

  def create
  end

  def destroy
  end

  def update
  end
end
