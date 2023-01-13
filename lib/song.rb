require 'pry'

class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def my_instance_method
        self
    end

    def self.count
        @@count
    end

    def self.artists
        unique_array = @@artists.uniq
        unique_array
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count 
        genre_hash = {}
        @@genres.each do |t| 
            if genre_hash.has_key?(t)
                genre_hash[t] += 1
            else
                genre_hash[t] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |t| 
            if artist_hash.has_key?(t)
                artist_hash[t] += 1
            else
                artist_hash[t] = 1
            end
        end
        artist_hash
    end
end
