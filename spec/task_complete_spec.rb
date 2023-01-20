require 'task_complete'

RSpec.describe CompletedTasks do
    it "Adds completed tasks to array" do
        test = CompletedTasks.new()
        result = test.mark_completed("buy food")
        expect(result).to eq ["buy food"]
    end

    it "returns tasks left to complete to array" do
        test = CompletedTasks.new()
        test.mark_completed("buy food")
        expect(test.update_list).to eq ["get haircut", "eat food"]
    end
end