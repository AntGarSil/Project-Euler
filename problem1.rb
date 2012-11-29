#Problem 1 of ProjectEuler.net

def getMultiplesOfThree(limit)
	var = 1;	
	result = []
	
	while var * 3 < limit
		if var * 3 < limit
			result[var - 1] = var*3
		end
		var += 1
	end	
	#puts result
	multiplesum = addArray(result)
	return multiplesum
end

def getMultiplesOfFive(limit)
	var = 1;	
	result = []
	
	while var * 5 < limit
		if var * 5 < limit
			result[var - 1] = var*5
		end
		var += 1
	end	
	#puts result
	multiplesum = addArray(result)
	return multiplesum
end


def addArray(multiples)
	var = 0
	sum = 0
	while var < multiples.length
		sum += multiples[var]
		var += 1
	end
	return sum
end

mulfive = 0
multhree = 0
x = Thread.new { mulfive = getMultiplesOfFive(1000) } 
y = Thread.new { multhree = getMultiplesOfThree(1000) } 
x.join  
y.join

puts mulfive + multhree