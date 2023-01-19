class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
    @chunk_array = []
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    list = @contents.split(" ").length #105
    return list
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.

    return (count_words / wpm.to_f).ceil

  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    
    # mins_of_reading_count = 0 

    # while mins_of_reading_count < reading_time
    # reading_time - minutes = minutes_leftover

    # time_available / wpm = words_readable_in_the_time

    

    

      # no_more_words = wpm * minutes
      # word_list = words[@furthest_word_read, no_more_words]
      # @furthest_word_read += no_more_words
      # @chunk_array << word_list.join(" ")
      # return @chunk_array
 #limit = count_words + count_words.remainder(wpm) 
    if @furthest_word_read == count_words
      @furthest_word_read = 0
      put " "
    end

    no_more_words = wpm * minutes
    word_list = words[@furthest_word_read, no_more_words]
    @furthest_word_read += word_list.length #no_more_words
    return word_list.join(" ")

  end

  def loop
    while @furthest_word_read != count_words

      return reading_chunk(200, 1)
      
    end
  end

  def words
    return @contents.split(" ")
  end
end

run = DiaryEntry.new("Thursday", "I am tired please sent me to sleep. If you do sent me to sleep i will be cranky")

puts run.reading_chunk(4, 1)
puts run.reading_chunk(4, 1)
puts run.reading_chunk(4, 1)
puts run.reading_chunk(4, 1)
puts run.reading_chunk(4, 1)
