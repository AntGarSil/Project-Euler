def getSolutions (p)

a = 1
b = 1
c = 1
solutions = 0

	while a < p
		while b < p
			aux = a ** 2 + b ** 2
			c = Math.sqrt(aux)
			if a + b + c == p && c % 1 == 0 && c != 0
				solutions += 1
				#print [a,b,c]
				#puts ''
			end
			if a + b + c > p
				b = 1
				break
			end		
				
			b += 1		
		end
		a += 1
	end
	
	return [p,solutions/2]
end

def getMaxSolutions(limit)
	var = 0
	max = [0,0]
	aux = [0,0]
	while var < limit
		aux = getSolutions(var)
		if aux[1] > max[1]
			max[1] = aux[1]
			max[0] = aux[0]
		end		
		var += 1
	end
	return max
end

solutions = getMaxSolutions(1000)
puts solutions