x = 0
y = 1
puts x
puts y
3.upto(10) do
	z = x+y
	x = y
	y = z
	puts z
end
