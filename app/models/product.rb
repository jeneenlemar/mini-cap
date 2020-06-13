class Product < ApplicationRecord

  def is_discounted?
    if price < 10
      true
    else
      false 
    end
  end

def tax
 price * 0.10
end

def total_price
  price + tax
end

end
