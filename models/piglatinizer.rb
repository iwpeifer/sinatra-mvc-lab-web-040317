class PigLatinizer

	def piglatinize(text)
	 cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t",
"v", "w", "x", "y", "z", "S"]
	 new_text = text.split(" ").map do |word|
	   
	   if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
	     word << "way"
	   
	   elsif cons.include?(word[0]) && cons.include?(word[1]) && cons.include?(word[2])
	   	start = [word[0], word[1], word[2]]
	   	broken_word = word.split("")
	   	broken_word << start << "ay"
	   	3.times do broken_word.shift end
	   	broken_word.flatten.join("")
	   
	   elsif cons.include?(word[0]) && cons.include?(word[1])
	   		start = [word[0], word[1]]
	   		broken_word = word.split("")
	   		broken_word << start << "ay"
	   		2.times do broken_word.shift end
	   		broken_word.flatten.join("")
	   else
	   	 broken_word = word.split("")
	     first_letter = broken_word.first
	     broken_word.delete_at(0)
	     broken_word << first_letter << "ay"
	     broken_word.join("")
	   end
	  end
	  new_text.map do |word|
	  	if word == "iway"
	  		word.capitalize
	  	end
	  end
	  new_text.join(" ")
	 end

	 def to_pig_latin(text)
	 	text.split(" ").map{|word| piglatinize(word)}.join(" ")
	 end
end