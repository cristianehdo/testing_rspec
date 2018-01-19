def hash_to_array(hash)
  hash.map{ |key_value| key_value }
end


def array_to_hash(array)
  array.map do |array|
    {name: array[0], age: array[1]}
  end
end

# p hash_to_array({ "a"=> "abc", "b"=> "bcd", "d"=> "def" })
arr = [["john", 21], ["carl", 33], ["bob", 31]]
p array_to_hash(arr)
