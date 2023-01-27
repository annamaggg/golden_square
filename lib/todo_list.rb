class TodoList
    def initialize
        @list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @list.push(todo)
    end
  
    def incomplete
      # Returns all non-done todos
      return @list
    end
  
    def complete
      # Returns all complete todos
      complete_tasks = []

      @list.each do |item|
        if item.done? == true
            complete_tasks << item
        end 
      end

      return complete_tasks 
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end