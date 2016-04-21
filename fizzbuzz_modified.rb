# Fizzbuzz, a little different

(1..100).each do |i|
    x=''
    if i%3==0
        x = x+'Fizz'
    end
    if i%5==0
        x = x+'Buzz'
    end
    if x.empty?
        puts i
    else
        puts x
    end
end

