require 'diary_3' 
require 'diary_3_entry'

RSpec.describe "Integration" do
    it "adds an entry" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        diary.add(input)
        expect(diary.all).to eq [input]
    end

    it "adds two entries" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        input_two = DiaryEntry.new("Wednesday", "I'm sad today")
        diary.add(input)
        diary.add(input_two)
        expect(diary.all).to eq [input, input_two]
    end

    it "returns number of words in one diary entry" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        diary.add(input)
        result = input.count_words
        expect(result).to eq 3
    end

    it "returns number of words in all diary entries" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        input2 = DiaryEntry.new("Tuesday", "Now I'm sad")
        diary.add(input)
        diary.add(input2)
        expect(diary.count_words).to eq 6
    end

    it "returns zero for no entries" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "")
        input2 = DiaryEntry.new("Tuesday", "")
        diary.add(input)
        diary.add(input2)
        expect(diary.count_words).to eq 0
    end

    it "returns full word count for multiple entries" do
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        input2 = DiaryEntry.new("Tuesday", "Now I'm sad")
        diary.add(input)
        diary.add(input2)
        expect(diary.reading_time(2)).to eq 3
    end

    it "returns closest entry able to read in time given" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        diary.add(input)
        expect(diary.find_best_entry_for_reading_time(3, 1)).to eq input
    end

    it "returns closest entry able to read in time given with multiple entries" do 
        diary = Diary.new
        input = DiaryEntry.new("Tuesday", "I'm happy today")
        input2 = DiaryEntry.new("Wednesday", "I'm happier today than yesterday")
        diary.add(input)
        diary.add(input2)
        expect(diary.find_best_entry_for_reading_time(3, 1)).to eq input
    end
end

