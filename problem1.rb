#Problem 1 of ProjectEuler.net
require 'thread'

def getMultiplesOfThree(limit)
	var = 1
	result = []
	
	while var * 3 < limit
		if var * 3 < limit
			result[var - 1] = var*3
		end
		var += 1
	end	

	return result
end

def getMultiplesOfFive(limit)
	var = 1
	result = []
	
	while var * 5 < limit
		if var * 5 < limit
			result[var - 1] = var*5
		end
		var += 1
	end	
	return result
end

def getMultiplesOfFifteen(limit)
	var = 1
	result = []
	
	while var * 15 < limit
		if var * 15 < limit
			result[var - 1] = var*15
		end
		var += 1
	end	
	return result
end



def addArray(multiples)
	var = 0
	sum = 0
	while var < multiples.length
		sum += multiples[var]
		var += 1
		
	end
	#puts sum
	return sum
end


mulfive = []
multhree = []
mulfifteen = []
sumfive = 0
sumthree = 0
sumfifteen = 0

mutex = Mutex.new
cv = ConditionVariable.new
cv2 = ConditionVariable.new


x = Thread.new {
	mulfive = getMultiplesOfFive(1000)
	sumfive = addArray(mulfive)

}

y = Thread.new {
	multhree = getMultiplesOfThree(1000)
	sumthree = addArray(multhree)
 
} 

z = Thread.new {
	mulfifteen = getMultiplesOfFifteen(1000)
	sumfifteen = addArray(mulfifteen) 
} 

x.join  
y.join
z.join

#Remove repeated values
result = sumfive + sumthree - sumfifteen
puts result


# 233168
# 266333