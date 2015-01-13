# A simple Caesar Cipher encrypter

  puts "Please enter a text to encrypt:"
	text = gets.chomp # the text to encrypt
	
	puts "Please enter a shift-factor:"
	shiftFactor = gets.chomp.to_i # the shift-factor
	
	arrayOfText = text.split("") # inserting text into an array, each char as separate elem
	
	newArr = [] # an encrypted array
	
	# looping through and encrypting
	arrayOfText.each do |ch|		
		regularChar = ch.ord #changing the char to its ascii int
		
		if((regularChar > 96 && regularChar < 123) || (regularChar > 64 && regularChar < 91)) #then # i.e. if it is only the alphabets
			encryptedChar = regularChar + shiftFactor # adding the shift-factor
			
			if (encryptedChar > 122) #then
				newShiftFactor = encryptedChar - 122 # geting the left-over, so that we can reStart the loop of ascii int
				encryptedChar = 97 + newShiftFactor # adding this to 97, which is 'a' in ascii
			end
		  if (encryptedChar > 90 && encryptedChar < 96) #then
        newShiftFactor = encryptedChar - 90 # geting the left-over, so that we can reStart the loop of ascii int
        encryptedChar = 64 + newShiftFactor # adding this to 65, which is 'A' in ascii
		  end
			newArr.push(encryptedChar.chr)				  		 
		  
		else # i.e. if it is not a alphabet
			newArr.push(ch)
		end
	end # end of loop
	
	
	puts newArr.join #printing the encrypted text