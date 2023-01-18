require 'time_manager'

RSpec.describe "reading_time method" do
    it "returns mins and secs for reading text" do 
        result = reading_time("hello there I am anna Magnusson")
        expect(result).to eq "0 mins, 1s"
    end
end