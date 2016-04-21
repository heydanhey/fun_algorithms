# You're att a river with two buckets.
# One holds exactly 3 liters.
# The other holds exactly 5 liters.
# Figure out how to measure exactly 4 liters.

def is_full?(bucket, bucket_size)
    if bucket.length == bucket_size
        return true
    else
        return false
    end
end

def fill_bucket(bucket, bucket_size, water)
    until is_full?(bucket, bucket_size) || water.empty? do
       bucket << water.pop
    end
    return bucket, water
end

def empty_bucket(bucket)
    return bucket = []    
end

water_supply = [1,1,1,1,1,1,1,1,1,1,1,1,1]

# start with empty buckets
five_liter_bucket = []
three_liter_bucket = []

# fill the five liter bucket
fill_bucket(five_liter_bucket, 5, water_supply)

# pour the five liter back into the three liter bucket until it's full
fill_bucket(three_liter_bucket, 3, five_liter_bucket)
# the five liter bucket is left with two liters

# then empty the three liter bucket
three_liter_bucket = empty_bucket(three_liter_bucket)

# pour remaining contents from five liter bucket into three liter bucket
fill_bucket(three_liter_bucket, 3, five_liter_bucket)
# the three liter bucket now contains two liters

# fill the five liter bucket which is now empty
fill_bucket(five_liter_bucket, 5, water_supply)

# fill the three liter bucket from the five liter bucket
fill_bucket(three_liter_bucket, 3, five_liter_bucket)

puts "5 liter bucket amount:  #{five_liter_bucket.length}"