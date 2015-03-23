#1. Create a method that takes a celsius argument and convert it from celsius to fahrenheit. Or vice versa
def toCelsius (celsius)
	return ((celsius*1.8)+32)
end

#2. Create a method that asks for a user input and converts it to fahrenheit. Or vice versa.
class ConvertInput
	print "Enter the celsius temperature you want to convert to fahrenheit:"
	convertIn=gets.chomp.to_f
	convertOut=toCelsius(convertIn)
	puts "#{convertIn} equals #{convertOut}\n"
end

#3.Write a program that asks for a name and an age. Have it output something like “Bob was born in 1985”
class NameAge
	print "\nEnter your name:"
	name=gets.chomp.capitalize
	print "Enter your age:"
	age=gets.chomp
	puts "#{name} was born in #{age}\n"
end

#4.Write a mad lib program. Users are prompted for verbs, nouns, and adjectives and then it should output a paragraph using those words.
class MadLib
	print "\nMad Lib Time\nEnter a verb:"
	verb=gets.chomp
	print "Enter noun:"
	noun=gets.chomp
	print "Enter adjectives:"
	adj=gets.chomp
	puts "Once upon a time, #{noun} lived on the planet Mars.  On Thursdays, #{noun} would #{verb} at the #{adj} moon."
end

