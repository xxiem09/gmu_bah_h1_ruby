# Return a reversed copy of the array

def reverse(an_array)
   an_temp_array = Array(an_array.length)
   an_temp_array = an_array.reverse
end

# Return a map of letters and counts of letters

def histogram(a_string)
   an_array = Array.new(a_string.length)
   ls_compact_string = a_string.delete(' ')
   an_array = ls_compact_string.downcase
   str_hash = Hash.new(0)
   for idx in 0..an_array.length
        item = an_array[idx]
        str_hash[item] += 1
   end
   str_hash.each { |key, value| puts "'#{key}' =>  #{value}"}
end

# Sum all the numbers in the array

def sum_only_numbers(array)
         ll_sum = 0.0
         if array.length > 0
                for idx in array do
                   if idx.is_a?(Numeric)
                      ll_sum += idx
                   end
                end
          end
         puts ll_sum
end

# For i from 1 to 100, return an array

def fizzbuzz
   an_array = Array.new(100)
   for cnt in 1..100
        l3_rem = cnt%3
        l5_rem = cnt%5
        if l3_rem == 0 && l5_rem != 0
             an_array[cnt -1 ] = 'Fizz'
        elsif l3_rem != 0 && l5_rem == 0
             an_array[ cnt -1 ] = 'Buzz'
        elsif l3_rem == 0 && l5_rem == 0
             an_array[ cnt - 1] = 'FizzBuzz'
        else
             an_array[ cnt - 1] = cnt
        end
    end
    idx = 0
    loop do
        puts(an_array[idx])
        idx += 1
        if (idx == 100 ) then
            break
        end
    end
end


# Uncomment each of these to test your functions
# puts reverse( [ 3,6,'dog']).inspect
# puts histogram('The Quick brown fox').inspect
# puts sum_only_numbers([4, 'foo',[ ],27, :rain, 3.14])
# puts fizzbuzz.join("\n")