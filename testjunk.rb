require 'pry'

a = "this is a test"

  counter = 0

a.each_char do |x|

  if x == " "
    counter = counter + 1
    puts "counter is #{counter}"
  else
    puts "the output is #{x}"
  end

end
