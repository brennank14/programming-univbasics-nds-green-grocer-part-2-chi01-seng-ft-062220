require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  cart.each do |element|
    coupons.each  do |c_element|
      if c_element[:item] == element[:item]
        if element[:count] >= c_element[:num]
          element[:count] -= c_element[:num]
        else
          element[:count] == 0
        end
        cart << {:item => "#{c_element[:item]} W/COUPON", :count => c_element[:num], :price => (c_element[:cost])/(c_element[:num]), :clearance => element[:clearance]}
      end
    end
  end
  cart 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
