class StocksController < ApplicationController
  def search
    @stock = Stock.lookup(params[:stock].upcase)
    render "users/my_portfolio"
  end
end
