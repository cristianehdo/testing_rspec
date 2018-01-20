# require "rspec"
require "./first"

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
  it "should return true" do
    expect(anagrams?("acb", "abc")).to eq(true)
  end
  it "should return true" do
    expect(anagrams?("acb", "abc")).to eq(true)
  end
end
