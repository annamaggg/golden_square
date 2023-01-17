require 'gratitudes'

RSpec.describe Gratitudes do 
  it "adds gratitudes to a list which it returns" do
    testlist = Gratitudes.new()
    testlist.add("friends")
    ans = testlist.format
    expect(ans).to eq "Be grateful for: friends"
  end
end

RSpec.describe Gratitudes do
  it "adds two gratitudes to a list which it returns" do
    testlist_two = Gratitudes.new()
    testlist_two.add("family")
    testlist_two.add("love")
    ans = testlist_two.format
    expect(ans).to eq "Be grateful for: family, love"
  end
end
