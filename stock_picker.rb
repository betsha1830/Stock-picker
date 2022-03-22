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