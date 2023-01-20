class GrammarStats
    def initialize
      # ...
      @list = []
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
        arr = text.split('')
        if arr[0] == arr[0].upcase && (arr[-1] == "." || arr[-1] == "?" || arr[-1] == "!")
            @list.push("true")
            return true
        else
            @list.push("false")
            return false
        end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
        count = 0
        total = @list.length

        @list.each do |i|
            if i == "true"
                count += 1
            end
        end

        return sum = (count * 100) / total
    end
  end
