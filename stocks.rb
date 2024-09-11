# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
# 
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.


stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  buy = 0
  sell = 0
  profit = 0
  stocks.each_with_index do |buy_price, buy_day|
    stocks.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > profit
          profit = sell_price - buy_price
          buy = buy_day
          sell = sell_day
        end
      end
    end
  end
  puts [buy, sell]
end

stock_picker(stocks)