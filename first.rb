def hash_to_array(hash)
  hash.map{ |key_value| key_value }
end


def array_to_hash(array)
  array.map do |array|
    {name: array[0], age: array[1]}
  end
end

def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  string_a = a_string.downcase.chars.sort.join.gsub(/[^0-9a-z]/, '')
  string_b = another_string.downcase.chars.sort.join.gsub(/[^0-9a-z]/, '')
  string_a == string_b
end


# p hash_to_array({ "a"=> "abc", "b"=> "bcd", "d"=> "def" })
# arr = [["john", 21], ["carl", 33], ["bob", 31]]
 # array_to_hash(arr)
p anagrams?("acb", "abc")
