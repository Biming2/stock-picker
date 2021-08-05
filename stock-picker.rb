def stock_picker(prices)
  current_max = 0
  profit = 0
  buy_day = 0
  sell_day = 0
  sub_array = []

  prices.each_with_index do |price, index|
    sub_array = prices.slice(index + 1, prices.size - 1)
    sub_array.each_with_index do |sub_price, sub_index|
      profit = sub_price - price
      unless current_max > profit
        current_max = profit
        buy_day = index
        sell_day = (prices.size - sub_array.size) + sub_index
      end
    end
  end

  print '[', buy_day, ',', sell_day, ']', "\n"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])