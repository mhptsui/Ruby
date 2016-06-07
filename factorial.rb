def factorial(n)
#	n * (n>1? factorial(n-1): 1)
	answer = 1
	n.downto(1) { |i| answer *= i }
	answer
end

1.upto(10) do |n|
	puts "#{n}! = #{factorial(n)}"
end

