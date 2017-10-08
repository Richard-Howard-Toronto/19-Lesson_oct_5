
  require 'pry'


  #THREE WAYS

  a = "this is a test"

  counter = 0

  #read each character in string one by one

  a.each_char do |x|

  #define x = to space, as one space divides two words, two divides three words, etc.

    if x == " "
      counter = counter + 1
      puts "counter is #{counter}"
    else
      puts "the output is #{x}"
    end

  end

  puts "You have #{counter+1} words."

puts "--------------------------------------------------"

  def word_count(string)
    counter = 0
    string.each_char do |x|
      if x == " "
        counter = counter + 1
      end
    end
    puts "Your input: #{string}"
    puts "There are #{counter} words in that string"
  end


  word_count('this is a second string that contains more words about the subject matter... how many words? ')


  #CHAPTER 6, page 200

  text = "this is a test of the text"
  word_count_hash = Hash.new 0  #the 0 creates a default value
  text.split.each { |word| word_count_hash[word.downcase] += 1}
  p word_count_hash
  p "the number of words is....    #{word_count_hash.count}"
