def stock_picker(prices)
    best_days = Array.new()
    best_profit = 0

    prices.each_with_index do |first_price, first_index|
        prices.each_with_index do |second_price, second_index|
            profit = second_price - first_price
            if best_profit < profit && first_index < second_index
                best_profit = profit
                best_days = [first_index, second_index]
            end
        end
    end
    
    best_days
end 

prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)