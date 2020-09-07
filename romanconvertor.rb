def fromRoman(romanNumber)
    arabicNumber = 0
    until romanNumber.empty? do
		case
		when romanNumber.start_with?("M")  then value = 1000; len = 1
		when romanNumber.start_with?("CM") then value = 900;  len = 2
		when romanNumber.start_with?("D")  then value = 500;  len = 1
		when romanNumber.start_with?("CD") then value = 400;  len = 2
		when romanNumber.start_with?("C")  then value = 100;  len = 1
		when romanNumber.start_with?("XC") then value = 90;   len = 2
		when romanNumber.start_with?("L")  then value = 50;   len = 1
		when romanNumber.start_with?("XL") then value = 40;   len = 2
		when romanNumber.start_with?("X")  then value = 10;   len = 1
		when romanNumber.start_with?("IX") then value = 9;    len = 2
		when romanNumber.start_with?("V")  then value = 5;    len = 1
		when romanNumber.start_with?("IV") then value = 4;    len = 2
		when romanNumber.start_with?("I")  then value = 1;    len = 1
		else
			raise TypeError
		end
		
		arabicNumber += value
		romanNumber.slice!(0,len)
	end
	return arabicNumber
end

def toRoman(arabicNumber)
    roman = ""
	if arabicNumber < 1 or arabicNumber > 3999
    	raise RangeError
    end
	
	if arabicNumber >= 1000
		romanNumber + "M"
		toRoman(arabicNumber - 1000)
	end
	if arabicNumber >= 900
		romanNumber + "CM"
		toRoman(arabicNumber - 900)
	end
	if arabicNumber >= 500
		romanNumber + "D"
		toRoman(arabicNumber - 500)
	end
	if arabicNumber >= 400
		romanNumber + "CD"
		toRoman(arabicNumber - 400)
	end
	if arabicNumber >= 100
		romanNumber + "C"
		toRoman(arabicNumber - 100)
	end
	if arabicNumber >= 90
		romanNumber + "XC"
		toRoman(arabicNumber - 90)
	end
	if arabicNumber >= 50
		romanNumber + "X"
		toRoman(arabicNumber - 50)
	end
	if arabicNumber >= 40
		romanNumber + "XL"
		toRoman(arabicNumber - 40)
	end
	if arabicNumber >= 10
		romanNumber + "X"
		toRoman(arabicNumber - 10)
	end
	if arabicNumber >= 9
		romanNumber + "IX"
		toRoman(arabicNumber - 9)
	end
	if arabicNumber >= 5
		romanNumber + "V"
		toRoman(arabicNumber - 5)
	end
	if arabicNumber >= 4
		romanNumber + "IV"
		toRoman(arabicNumber - 4)
	end
	if arabicNumber >= 1
		romanNumber + "I"
		toRoman(arabicNumber - 1)
	end
	return romanNumber
end