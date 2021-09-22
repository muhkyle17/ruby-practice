array = [34, 15, 88, 2]
array2 = [34, -345, -1, 100]

def minimum(arr)
  smallest = arr[0]
  for i in 0...arr.length - 1 
    if arr[i].to_i < smallest.to_i
      smallest = arr[i]
    end
  end
  puts "The smallest integer in the array #{arr} is #{smallest}"
end

minimum(array)
minimum(array2)

# Polymorphism

class Invoice
  def summary
    puts "Total: 500"
    puts "Customer: ABC Company"
  end
end

class ShippingLabel < Invoice
  def summary
    super
    puts "Shipping Company: UPS"
    puts "Signed by: Jon Snow"
  end
end

invoice = Invoice.new
invoice.summary

shipping_label = ShippingLabel.new
shipping_label.summary

# Abstraction
# 