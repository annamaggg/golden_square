class Diary
    def initialize
        @diarylist = []
        @todolist = []
    end

    def add_entry(entry)
        @diarylist.push(entry.format)
    end

    def diary_entries
        #return all entries
        return @diarylist
    end

    def add_todo(todo)
        @todolist.push(todo)
    end

    def incomplete todo
        #return todos
    end

    def phone_numbers

    end
end

