def task_tracker(text)
    fail "No text was entered" if text.nil?

    if text.include? "TODO"
        return text
    else
        return "No text including 'TODO' was found"
    end 
end

#task_tracker(["TODO: eat", "TODO: sleep", "repeat"])