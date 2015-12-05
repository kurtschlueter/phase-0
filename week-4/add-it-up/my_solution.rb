def sentence_maker(arraystring)

 fullsentence = 'k'

 puts fullsentence

 length_of_arraystring = arraystring.length

 puts length_of_arraystring

 current_index_of_array = 0

 puts current_index_of_array
 puts ' '

 while current_index_of_array < length_of_arraystring

  fullsentence = fullsentence + arraystring[current_index_of_array]
  puts fullsentence
   puts current_index_of_array
  current_index_of_array = current_index_of_array + 1


 end

 # puts fullsentence

end

sentence_maker(['bacon', 'is', 'rad'])