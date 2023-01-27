require 'todo'

RSpec.describe Todo do
  it "returns empty if the task is in an empty string" do
  to_do = Todo.new("Order Grocery")
  expect(to_do.task).to eq "Order Grocery"
 end

end