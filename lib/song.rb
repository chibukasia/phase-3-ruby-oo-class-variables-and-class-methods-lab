class Song
    @@count = 0
    @@genres = []
    @@artists = []
    
    attr_accessor :name, :artist, :genre

    
    def initialize(name, artist, genre)
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end