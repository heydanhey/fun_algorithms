# You're att a river with two buckets.
# One holds exactly 3 liters.
# The other holds exactly 5 liters.
# Figure out how to measure exactly 4 liters.

# start with empty buckets
five_liter_bucket = 0
three_liter_bucket = 0

# fill the five liter bucket
five_liter_bucket = 5

# pour the five liter beuck into the three liter bucket until it's full
until three_liter_bucket == 3 do
    five_liter_bucket -= 1
    three_liter_bucket += 1
end
# the five liter bucket is left with two liters

# the empty the three liter bucket
three_liter_bucket = 0

# pour remaining contents from five liter bucket into three liter bucket
until five_liter_bucket == 0 do
    five_liter_bucket -= 1
    three_liter_bucket += 1
end
# the three liter bucket now contains two liters

# fill the five liter bucket which is now empty
five_liter_bucket = 5

# fill the three liter bucket from the five liter bucket
until three_liter_bucket == 3 do
    five_liter_bucket -= 1
    three_liter_bucket += 1
end

p five_liter_bucket
