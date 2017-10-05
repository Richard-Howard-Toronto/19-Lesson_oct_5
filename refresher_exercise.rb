
  require 'pry'

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
