class Stock < ApplicationRecord
  def self.lookup(ticker_symbol)
    # debugger
    stock = Alphavantage::TimeSeries.new(symbol: ticker_symbol)
    company = Alphavantage::Fundamental.new(symbol: ticker_symbol)
    new(ticker: ticker_symbol, name: company.overview.name, last_price: stock.quote.price)
  end
end
