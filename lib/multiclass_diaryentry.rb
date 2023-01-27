class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
    end

    def format
        return "#{@title}: #{@contents}"
    end
end