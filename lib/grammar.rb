#As a user
#So that I can improve my grammar
#I want to verify that a text starts with a capital letter 
#and ends with a suitable sentence-ending punctuation mark.

def grammarise(text, type)
    #types: statement, question, exclamation

    #check if capitalised
    arr = text.split(' ')
    arr[0].capitalize!()

    #check punctuation based on type
    if type == "statement"
        sorted = arr[-1].include? "."
        if sorted == false
            arr[-1] += "."
        end
    end

    sentence = arr.join(' ')
    return sentence
end 

#tests

# grammarise("hey there, how are you doing") => "Hey there, how are you doing?"
# grammarise("absolutely wonderful") => "Absolutely wonderful!"
# grammarise("That's awesome!") => "No grammatical errors were found in the text"