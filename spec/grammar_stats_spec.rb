require 'grammar_stats'

RSpec.describe GrammarStats do
    it "checks a string for punctuation and capital letter" do
        entry = GrammarStats.new()
        result = entry.check("Hi there, I am Anna")
        expect(result).to eq false
    end

    it "checks a string for punctuation and capital letter" do
        entry = GrammarStats.new()
        result = entry.check("Hi there, I am Anna!")
        expect(result).to eq true
    end

    it "checks percentage of texts that are valid" do
        entry = GrammarStats.new()
        entry.check("Hi there, I am Anna!")
        entry.check("waddup yo")
        result = entry.percentage_good
        expect(result).to eq 50
    end

    it "checks percentage of texts that are valid" do
        entry = GrammarStats.new()
        entry.check("Hi there, I am Anna!")
        entry.check("waddup yo")
        entry.check("It's friday today?")
        entry.check("Awesome!")
        result = entry.percentage_good
        expect(result).to eq 75
    end
end