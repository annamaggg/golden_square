class Todo
    def initialize(task) # task is a string
      @task = task
      @complete = false
    end
  
    def task
      return @task
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
      #@completed << @task
      @complete = true
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
      if @complete == true
        return true 
      else
        return false
      end
    end
  end