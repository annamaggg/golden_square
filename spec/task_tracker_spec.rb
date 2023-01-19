require 'task_tracker'

RSpec.describe "task_tracker method" do 
    it "checks for the word 'TODO' within a string" do 
        result = task_tracker("hello there")
        expect(result).to eq "No text including 'TODO' was found"
    end

    it "finds a TODO in a string" do
        result = task_tracker("TODO: homework")
        expect(result).to eq "TODO: homework"
    end

    context "When text is equal to nil" do 
        it "throws error" do 
            expect { task_tracker(nil) }.to raise_error "No text was entered"
        end
    end
end