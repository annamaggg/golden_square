require 'todo'
require 'todo_list'

RSpec.describe "To Do Integration" do
    it "adds the task in the todo list from todo" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      expect(todo.add(task)).to eq [task]
    end

     it "adds the task in the todo list from todo" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      task_2 = Todo.new("Cook Dinner")
      todo.add(task)
      todo.add(task_2)
      expect(todo.incomplete).to eq [task, task_2]
    end

    it "returns the complete list if no tasks are marked done" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      task_2 = Todo.new("Cook Dinner")
      todo.add(task)
      todo.add(task_2)
      expect(todo.incomplete).to eq [task, task_2]
    end

    it "returns completed tasks" do
      todo = TodoList.new()
      task = Todo.new("Order Grocery")
      task_2 = Todo.new("Cook Dinner")
      todo.add(task)
      todo.add(task_2)
      task.mark_done!
      expect(todo.complete).to eq [task]
    end
end