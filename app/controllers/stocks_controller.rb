class StocksController < ApplicationController
  def search
    stock = Stock.lookup_price(params[:stock])
    # stock = "172.4200"
    # debugger
    render json: stock
  end
end
