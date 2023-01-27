class MusicLibrary
    def initialize
      @list = []
    end
  
    def add(name, track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
        @list.push("#{name}: #{track}")
    end
  
    def all
      # Returns a list of track objects
      return @list
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
      keyword_list = []
      @list.each do |item|
        if item.include? keyword
            keyword_list.push(item)
        end
      end
      return keyword_list
    end
end