class StocksController < ApplicationController
  def search
    if  params[:stock].present?
      @stock = Stock.lookup(params[:stock].upcase)
      if @stock
        render "users/my_portfolio"
      else
        flash.now[:alert] = "Please enter a valid ticker symbol to search"
        render "users/my_portfolio"
      end
    else
        #   flash.now[:alert] = "Please enter a ticker symbol to search"
        render "users/my_portfolio"
    end
  end
end
