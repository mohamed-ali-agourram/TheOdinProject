def stock_picker(stock_prices)
  pair = []
  max_profit = 0
  stock_prices.each_with_index do |buy_day, index_b|
    if stock_prices.last != buy_day
      stock_prices.each_with_index do |sell_day, index_s|
        if stock_prices.index(buy_day) < stock_prices.index(sell_day)
          profit = sell_day - buy_day
          if profit > max_profit
            pair = [index_b, index_s]
            max_profit = profit
          end
        end
      end
    end
  end
  pair
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4]  # for a profit of $15 - $3 == $12
p stock_picker([1, 17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [0,1]  # for a profit of $17 - $1 == $16
