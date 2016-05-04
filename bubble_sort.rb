def bubble_sort unsorted_array
    swap = true
    n = unsorted_array.length-1
    while swap #if a swap has occured do another pass through
        i = 0
        swap = false
        while i < n
            if unsorted_array[i] > unsorted_array[i+1]
                temp = unsorted_array[i+1]
                unsorted_array[i+1] = unsorted_array[i]
                unsorted_array[i] = temp
                swap = true
            end
            i += 1
        end
        n -= 1
    end
    return unsorted_array
end

array = [1,2,3,4,5,6,7,8,9,10,11]
array.shuffle!
p array
p bubble_sort(array)