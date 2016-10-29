def selection_sort unsorted_array
 
    length = unsorted_array.length-1
    length.times do |j|
        i = j
        lowest_index = length
        while i < length
            if unsorted_array[i] < unsorted_array[lowest_index]
                lowest_index = i
            end
            i += 1
        end
        temp = unsorted_array[j]
        unsorted_array[j] = unsorted_array[lowest_index]
        unsorted_array[lowest_index] = temp
    end
    return unsorted_array
    
end

array = [1,2,3,4,5,6,7,8,9,10,11]
array.shuffle!
p array
p selection_sort(array) 