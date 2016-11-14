def stock_picker(array)
	hash={}

	array.each do |x|
		y=array.index(x)+1
		
		while y<array.length
			hash[array[y]-x]=[array.index(x),y]
			y+=1
		end
	end
	p hash.max
end
stock_picker([17,3,6,9,15,8,6,1,10])