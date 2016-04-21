# Take a number and convert each digit into an individual element within an array. You must not convert the data to a string at any point in the process.

# Example:

# 34,592,129,909 => [3,4,5,9,2,1,2,9,9,0,9]

def num_to_array num
    
    array = []
    div = 100000
    
    while div >= 1
        if (num / div) > 0
            digit = num / div
            array << digit
            num = num - (div * digit)
        end
        div = div / 10
    end
        
    return array
    
end

num = 12345

p num
p num_to_array(num)