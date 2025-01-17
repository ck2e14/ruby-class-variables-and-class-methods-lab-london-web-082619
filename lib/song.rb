class Song

    attr_reader :name, :artist, :genre, :count, :artists, :genres

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

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else 
                genre_hash[genre] = 1 
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end





