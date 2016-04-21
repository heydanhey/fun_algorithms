def binary_search(ordered_array, number)
    
    front = 0
    back = ordered_array.length - 1
    mid = back/2
    
    while (front <= back)
        if number > ordered_array[mid]
            front = mid
            mid = (mid+(back+1))/2
            if back == mid
                if number == ordered_array[mid]
                    return mid
                else
                    return "not there"
                end
            end
        elsif number < ordered_array[mid]
            back = mid
            mid = mid/2
            if front == mid
                if number == ordered_array[mid]
                    return mid
                else
                    return "not there"
                end
            end
        else
            return mid
        end
    end    
end

array = [0,2,3,4,5,6,7,8,10]

p "The index for your number is " + binary_search(array, 8).to_s