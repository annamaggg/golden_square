require 'present'

RSpec.describe Present do 
  it "takes a present and returns it" do
    test = Present.new()
    test.wrap("chocolate")
    ans = test.unwrap
    expect(ans).to eq "chocolate"
  end
end

RSpec.describe Present do
  context "when no present entered" 
  it "throws error" do
    test = Present.new()
    expect { test.unwrap }.to raise_error "No contents have been wrapped."
  end
end
