# Make a method that takes an array and reverses it.
# Catch: You are not allowed to declare a new array or duplicate the existing array. Also, you can iterate only once through the array.

def reverse array
    
    front = 0
    back = array.length - 1
    middle = array.length / 2
    
    # A times loop that just swaps the ends and moves inward.
    middle.times do
        temp = array[front]
        array[front] = array[back]
        array[back] = temp
        front+=1
        back-=1
    end
    
    return array 
end

test = [3,5,2,7,1,9,4]

p test

p reverse(test)