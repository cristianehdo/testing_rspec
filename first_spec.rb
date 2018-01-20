# require "rspec"
require "./first"
require 'rspec/collection_matchers'

describe "#hash_to_array" do
  let(:hash) { {"a"=> "abc", "b"=> "bcd", "d"=> "def"} }

  it "should return an array" do
    expect(hash_to_array(hash)).to be_a(Array)
  end

  it "should build an array on hash's key values" do
    expect(hash_to_array(hash)).to eq([["a", "abc"], ["b", "bcd"], ["d", "def"]])
  end
end

describe "#array_to_hash" do
  let(:arr) { [["john", 21], ["carl", 33], ["bob", 31]] }

  it "should return an array" do
    expect(array_to_hash(arr)).to be_a(Array)
  end

  it "should build an array of hashes with keys name and age" do
    expect(array_to_hash(arr)).to eq([{name: "john", age: 21}, {name: "carl", age: 33}, {name: "bob", age: 31}])
  end
end

describe "#anagrams?" do
  it "should return true when strings are anagrams" do
    expect(anagrams?("acb", "abc")).to eq(true)
  end
  it "should return false when strings aren't anagrams" do
    expect(anagrams?("xcb", "abc")).to eq(false)
  end
end

describe "#create_name" do
  it "should return an array" do
    expect(create_name("alex@gmail.com")).to be_a(Array)
  end
  it "should return an array with 2 elements" do
    expect(create_name("mcdonalds@gmail.com")).to have_exactly(2).items
  end
  it "should separate name from @...com" do
    expect(create_name("cedric@gmail.com")).to eq(["cedric", "gmail.com"])
  end

end
