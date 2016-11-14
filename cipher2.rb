#z = ord 122
#Z = ord 90
#a = ord 97
#A = ord 65
def caesar_cipher(x,y)
	words=x.split
	new_words=[]
	new_letters=[]
	new_string=[]
	words.each do |word|
		letters=word.split(//)
		
		letters.each do |x|
			
			if x.ord+y<122 && x.ord+y>96
				x=x.ord+y
				x=x.chr
				new_letters.push(x)
			elsif x.ord+y>122
				x=x.ord-(26-y)
				x=x.chr
				new_letters.push(x)
			elsif x.ord+y<90 && x.ord+y>65
				x=x.ord+y
				x=x.chr
				new_letters.push(x)
			elsif x.ord+y>90 && x.ord+y<97
				x=x.ord-(26-y)
				x=x.chr
				new_letters.push(x)
			else
				new_letters.push(x)
			end
			new_words=new_letters.join
			
		end
		new_string.push(new_words)
		
		new_letters=[]
	end
	new_string.join
	p new_string.join(' ')
end
caesar_cipher("Sully is, the Best!",12)