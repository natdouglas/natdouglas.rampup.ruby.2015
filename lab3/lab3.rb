#1.Build an application that can encrypt and decrypt a string.
#=begin
$reverse_alpha = {"a"=> "z", "b"=>"y", "c"=>"x", "d"=>"w", "e"=>"v", "f"=>"u", "g"=>"t", "h"=>"s", "i"=>"r", "j"=>"q", "k"=>"p",
	"l"=>"o", "m"=>"n", "n"=>"m", "o"=>"l", "p"=>"k", "q"=>"j", "r"=>"i", "s"=>"h", "t"=>"g", "u"=>"f", "v"=>"e", "w"=>"d", 
	"x"=>"c", "y"=>"b", "z"=>"a"}

def encrypt(eTxt)
	outTxt=""
	eTxt.each_char do |char|
		if (char==char[/[a-zA-Z]+/]) #check if a character 
			outTxt<<$reverse_alpha[char.downcase]
		else
			outTxt<<char
		end
	end
	return outTxt
end

def decrypt(eTxt)
	outTxt=""
	eTxt.each_char do |char|
		if (char==char[/[a-zA-Z]+/]) #check if a character 
			outTxt<<$reverse_alpha.key(char.downcase)
		else
			outTxt<<char
		end
	end
	return outTxt
end

#puts encrypt("Aabb 3bb")
inTxt=""
inStr=""
while inTxt.casecmp("END") !=0 do
	print "Enter encrypt or decrypt command (type END to stop):"
	inTxt=gets.chomp
	inStr=inTxt.split("\"")[1]
	#puts inTxt
	#puts inStr
	if(inTxt.include? "encrypt(")
		puts encrypt(inStr)
	elsif (inTxt.include? "decrypt(")
		puts decrypt(inStr)
	else
		puts "Use encrypt or decrypt"
	end
end
#=end