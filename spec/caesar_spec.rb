require "./lib/caesar"

describe "#caesar_convert" do
  it "returns string encoded by the offset" do
    expect(convert("how are you doing, 5")).to eql("mtb fwj dtz itnsl")
  end
end