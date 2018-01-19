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
