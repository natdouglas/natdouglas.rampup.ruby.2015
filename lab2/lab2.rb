#1.Write a program that prints out the complete lyrics to “99 bottles of beer on the wall.”
#=begin
(1..99).reverse_each do |i|
	puts i.to_s + " bottles of beer on the wall."
end
#=end

=begin
#2.Write a Deaf Grandma program.
print "Enter text for Grandma:"
Intxt=gets.chomp
if (Intxt==="BYE")
	puts "END"
elsif (Intxt===Intxt.upcase)
	puts "NO, NOT SINCE " + rand(1930..1980).to_s + "!"
else
	puts "HUH?!, SPEAK UP SONNY!"
end
=end

#3.Say BYE 3 times to Grandma to get END
=begin
bye_cnt=0
while bye_cnt !=3 do
	print "Enter text for Grandma:"
	inTxt=gets.chomp
	if (inTxt==="BYE")
		bye_cnt+=1
	elsif (inTxt===inTxt.upcase)
		puts "NO, NOT SINCE " + rand(1930..1980).to_s + "!"
		bye_cnt=0
	else
		puts "HUH?!, SPEAK UP SONNY!"
		bye_cnt=0
	end
end
puts "END"
=end