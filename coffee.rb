# nonunique_chars('Assignment')              # --> 'ns'
# nonunique_chars('I saw a movie this week') # --> 'aeisw'

#repeated characters
#Assignment- compare to all the letters you have seen so far

#pseudo solution

 #1. "a" -> assignment
 #2. "s" ->
 #3. "s" ->

#iterate over each letters
#for each letter
 #a. if we have not seen this letter before
    #i-pull letter out of work
    #ii - iterate over the rest of the  string
    #iii - compare each remaining letter with current letter
    #iv - if I find a match, we store it
    #
    # def repeated_characters(word)
    #   word.downcase
    #   word.each_char do |letter|
    #   end
    #
    #
    # end


# Alternative solution is to create a hash to store the letter frequency
# Then, iterate over letters in the word
# for each letter, retrieve it from the hash
# - if letter is found, add one to the count
# - if letter is NOT found, set letter as key and value to 1
# pullout all the keys where value is > 1
# turn this into a string and return it.

def nonunique_characters(word)

  frequency = { }

  word.each_char do |letter|
    if frequency[letter]
      frequency[letter] = frequency[letter]+1
    else
      frequency[letter] = 1
    end
  end

  dupes = frequency.select do |key, value|
    value > 1
  end

dupes.keys.join

end


p nonunique_characters('assignment')
p nonunique_characters('fish in a barrel ')
