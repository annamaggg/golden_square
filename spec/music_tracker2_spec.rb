require 'music_tracker2'

RSpec.describe MusicLibrary do
    it "returns list of track objects" do
        lib = MusicLibrary.new()
        lib.add(Faketracks.new.name, Faketracks.new.track)
        expect(lib.all).to eq ["Anna: Love"]
    end

    it "returns list of track objects" do
        lib = MusicLibrary.new()
        lib.add(double(:FaketracksTwo, name: "Anna").name, double(:FaketracksTwo, track: "Love").track)
        expect(lib.all).to eq ["Anna: Love"]
    end

    it "returns list of track objects" do
        lib = MusicLibrary.new()
        lib.add(double(:FaketracksTwo, name: "Anna").name, double(:FaketracksTwo, track: "I love u").track)
        lib.add(double(:FaketracksTwo, name: "Anna").name, double(:FaketracksTwo, track: "bread").track)
        lib.add(double(:FaketracksTwo, name: "Ana").name, double(:FaketracksTwo, track: "I love me").track)
        expect(lib.search("love")).to eq ["Anna: I love u", "Ana: I love me"]
    end
end

class Faketracks
    def name
        return "Anna"
    end

    def track
        return "Love"
    end
end