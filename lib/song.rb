require 'pry'
class Song
    attr_accessor :name
    attr_reader :artist
    @@all = []
    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist == nil
            nil
        else
            self.artist.name
        end
    end
end