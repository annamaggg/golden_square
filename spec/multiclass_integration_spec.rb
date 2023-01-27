require 'multiclass_diary'
require 'multiclass_diaryentry'

RSpec.describe "integration" do
    it "returns diary entries" do
        entry = DiaryEntry.new("wednesday", "I am tired")
        diary = Diary.new()
        diary.add(entry)
        expect(diary.diary_entries).to eq ["wednesday: I am tired"]
    end

    it "returns multiple diary entries" do
        entry = DiaryEntry.new("wednesday", "I am tired")
        entry2 = DiaryEntry.new("thursday", "I am feeling better now")
        diary = Diary.new()
        diary.add_entry(entry)
        diary.add_entry(entry2)
        expect(diary.diary_entries).to eq ["wednesday: I am tired", "thursday: I am feeling better now"]
    end
end