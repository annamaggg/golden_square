require 'counter'

RSpec.describe Counter do
  it "takes an integer and adds to a count" do
    test = Counter.new()
    test.add(5)
    ans = test.report
    expect(ans).to eq "Counted to 5 so far."
  end
end
