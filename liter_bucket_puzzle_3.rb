# You're att a river with two buckets.
# One holds exactly 3 liters.
# The other holds exactly 5 liters.
# Figure out how to measure exactly 4 liters.

# start with empty buckets
bucket_one_size = 5
bucket_two_size = 3

bucket_one = []
bucket_two = []

# fill the five liter bucket
bucket_one_size.times do
    bucket_one << 1
end

# pour the five liter back into the three liter bucket until it's full
bucket_two_size.times do
    bucket_two << bucket_one.pop
end
# the five liter bucket is left with two liters

# then empty the three liter bucket
until bucket_two.empty?
    bucket_two.pop
end

# pour remaining contents from five liter bucket into three liter bucket
bucket_one.length.times do
    bucket_two << bucket_one.pop
end
# the three liter bucket now contains two liters

# fill the five liter bucket which is now empty
bucket_one_size.times do
    bucket_one << 1
end

p bucket_one
p bucket_two

# fill the three liter bucket from the five liter bucket
(bucket_two_size - bucket_two.length).times do
    bucket_two << bucket_one.pop
end

puts "5 liter bucket amount:  #{bucket_one.length}"
