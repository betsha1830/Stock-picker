# PROBLEM
# Find the most profitable days to buy and sell a certain stock.

# CASES
# 1- Days to buy at a minimum and sell at a maximum

# SOLUTION
# 1- Take the most least number and take the most greatest number from its right.
# [17,3,6,9,15,8,6,1,10]

def stock_picker (stock_price)

    price_diff = []
    price_pair = []

    stock_price.each_with_index do |item,index|
        stock_price.each_with_index do |value, i|
            if (value > item && i > index)
                price_diff.push(value-item)
                price_pair.push([index,i])
            end
        end
    end
    price_pair[price_diff.find_index(price_diff.max)]

end

puts stock_picker [17,3,6,9,15,8,6,1,10]