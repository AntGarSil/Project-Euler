#problem 48 of projecteuler.net

#The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

#Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.


def getLastDigits(limit, sum)
	number = limit**limit
	sum += number
	sum = sum % 10000000000
	if limit == 751 || limit == 501 || limit == 251 || limit == 1
			return sum
		end
		limit = limit - 1
		getLastDigits(limit, sum)
end


lastDigitsQ1 = 0
lastDigitsQ2 = 0
lastDigitsQ3 = 0
lastDigitsQ4 = 0

startTime = Time.new


x = Thread.new {
	lastDigitsQ1 = getLastDigits(250, 0)	

}

y = Thread.new {
	lastDigitsQ2 = getLastDigits(500, 0)	

}

z = Thread.new {
	lastDigitsQ3 = getLastDigits(750, 0)	

}

k = Thread.new {
	lastDigitsQ4 = getLastDigits(1000, 0)	

}

x.join
y.join
z.join
k.join

=begin
lastDigitsQ1 = getLastDigits(250, 0)	
lastDigitsQ2 = getLastDigits(500, 0)	
lastDigitsQ3 = getLastDigits(750, 0)	
lastDigitsQ4 = getLastDigits(1000, 0)	
=end

endTime = Time.new
print ['Result: ', (lastDigitsQ1 + lastDigitsQ2 + lastDigitsQ3 + lastDigitsQ4) % 10000000000]
puts ''
print ['Time: ', endTime - startTime]
puts ''