class Stock < ApplicationRecord
  def self.lookup_price(ticker_symbol)
    quote = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    quote.price if quote
  end

  def self.lookup_company_name(ticker_symbol)
    company = Alphavantage::Fundamental.new(symbol: ticker_symbol)
    company.overview.name if company
  end
end
