#Problem19 of projecteuler.net

# You are given the following information, but you may prefer to do some research for yourself.

#1 Jan 1900 was a Monday.
#Thirty days has September,
#April, June and November.
#All the rest have thirty-one,
#Saving February alone,
#Which has twenty-eight, rain or shine.
#And on leap years, twenty-nine.
#A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def isLeapYear(year)
	isLeap = false
	if year % 4 == 0
		isLeap = true
		#puts 'LEAPING!!'
	end
	
	if isLeap && year % 100 == 0 && year % 400 != 0
		isLeap = false
	end
	
	return isLeap
end

def isSunday(daynum)	 
	 if daynum == 0
		 #puts 'ITS SUNDAY!!'
		 return true		 
	 end	 	 
	 return false
 end
 
 def getSundayNumFromYearToYear(startyear,endyear)
	daynum = 1
	yearnum = startyear
	month = 0
	var = 0
	sundayno = 0
	
	
	while yearnum < endyear
					
				#Check if its sunday
				if isSunday(daynum)
					sundayno += 1	
				end
				
				month += 1
				
				if month % 12 == 0
					month = 0
					yearnum += 1
				end
				
				#Check for February-March Transaction
				if month == 2
					if isLeapYear (yearnum)
						daynum += 1				
					end
				end

					#Unpair to pair month transaction - 2 day shift
					if month % 2 == 0 && month != 2
						daynum += 2
					end
					
					#Pair to unpair month transaction - 3 day shift
					if month % 2 != 0
						daynum += 3
					end
					
					daynum = daynum % 7
			
	end


			return sundayno
end
 
 
 
puts getSundayNumFromYearToYear(1900,2000)
