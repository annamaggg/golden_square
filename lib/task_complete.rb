#As a user
#So that I can focus on tasks to complete
#I want to mark tasks as complete and have them disappear from the list.

class CompletedTasks
    def initialize
        @tasks = ["get haircut", "eat food", "buy food"]
        @completed = []
    end

    def mark_completed(task)
        @completed << task
        return @completed
    end

    def update_list
        return @tasks - @completed
    end
end