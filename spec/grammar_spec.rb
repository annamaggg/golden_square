require 'grammar'

RSpec.describe "grammarise method" do 
    it "returns a sentence capitalised with full stop" do
        result = grammarise("hey there, wassup", "statement")
        expect(result).to eq "Hey there, wassup."
    end
end