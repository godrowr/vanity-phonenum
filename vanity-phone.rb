
arr_2 = ['A', 'B', 'C']
arr_3 = ['D', 'E', 'F']
arr_4 = ['G', 'H', 'I']
arr_5 = ['J','K','L']
arr_6 = ['M','N','O']
arr_7 = ['P','Q','R','S']
arr_8 = ['T','U','V']
arr_9 = ['W','X','Y','Z'] 

words = Hash.new(Array.new())
File.foreach('words.txt') do |word|
    values = word.split('')
    phonenum = ''
    for i in 0..values.length do
        val = values[i]
        if arr_2.include? val
            phonenum = phonenum + '2'
        elsif arr_3.include? val
            phonenum = phonenum + '3'
        elsif arr_4.include? val
            phonenum = phonenum + '4'
        elsif arr_5.include? val
            phonenum = phonenum + '5'
        elsif arr_6.include? val
            phonenum = phonenum + '6'
        elsif arr_7.include? val
            phonenum = phonenum + '7'
        elsif arr_8.include? val
            phonenum = phonenum + '8'
        elsif arr_9.include? val
            phonenum = phonenum + '9'
        end
    end 
    if words.has_key?(phonenum)
        val = words[phonenum]
        val.push(word.strip)
        words[phonenum] = val
    else
        insert = [word.strip]
        words[phonenum] = insert
    end
end

puts "Please enter a phone number"
@number = gets.chop
if @number.length < 11 # == 10 TODO
    # unless (number.nil? && number != 0)
    if (words.has_key?(@number))
        puts "Words: #{words[@number]}"
    end
    # end
else 
    puts "Input not 10 digits long"
end