require 'diary_3_entry'

RSpec.describe DiaryEntry do
    it "returns title as string" do 
        input = DiaryEntry.new("Tuesday", "I'm happy.")
        result = input.title
        expect(result).to eq "Tuesday"
    end

    it "returns contents as string" do 
        input = DiaryEntry.new("Tuesday", "I'm happy.")
        result = input.contents
        expect(result).to eq "I'm happy."
    end

    it "returns word count" do 
        input = DiaryEntry.new("Tuesday", "I'm happy.")
        result = input.count_words
        expect(result).to eq 2
    end

    it "returns word count" do 
        input = DiaryEntry.new("Tuesday", "I'm happy.")
        result = input.reading_time(2)
        expect(result).to eq 1
    end

    it "returns word count" do 
        input = DiaryEntry.new("Tuesday", "I'm happier than yesterday")
        result = input.reading_time(3)
        expect(result).to eq 2
    end

    it "returns chunk of text able to read in the time" do 
        input = DiaryEntry.new("Tuesday", "I am tired please sent me to sleep. If you do sent me to sleep i will be cranky")
        result = input.reading_chunk(4, 1)
        expect(result).to eq "I am tired please"
    end
end