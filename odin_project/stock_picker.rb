def stock_picker(prices)
  cur_price = prices[0]
  cur_index = 0

  profit = 0
  days = [0, 0]

  prices.each_with_index do |price, index|
    if price < cur_price
      cur_price = price
      cur_index = index
      next
    end

    if price - cur_price > profit
      profit = price - cur_price
      days = [cur_index, index]
    end
  end
  
  days
end

array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(array)