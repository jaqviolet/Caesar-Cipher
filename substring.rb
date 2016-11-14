 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
   
def substrings(word, dictionary)
	words=word.split
	words.each do |word|
		word.downcase!
	end
	hash={}
	
	#check each word in dictionary
	dictionary.each do |dict|
		
		#check each substring in string
		words.each do |text|
			
			for i in 0..(text.length)
			
				y=i
				while y<text.length
					#if the word is in the dictionary
					if dict == text[i..y]
						#if the hash exists, increment the value
						if hash.include?(text[i..y])
							hash[text[i..y]]+=1
						#if the hash doesn't exist, create it	
						else
							hash[text[i..y]]=1
						end						
						y+=1
						
					#if the word isn't in the dictionary	
					else
						y+=1
						
					end
				end
			end
		end
	end
	p hash
end
substrings("Howdy partner, sit down! How's it going?", dictionary)
# {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
