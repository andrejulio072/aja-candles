class Candle < ApplicationRecord
  has_many :orders, dependent: :destroy # @candle.orders
end
