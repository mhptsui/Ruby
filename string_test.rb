puts "This Is A Test".gsub(/[A-Z]/) { |x| x=='T'? x.downcase: x }
puts "This Is A Test".scan(/T\w+/).inspect