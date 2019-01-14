class Movie

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|char| char.movie == self}
    end

    def actors
        characters.map{|char| char.actor }
    end

    def self.most_actors
      all.max_by { |movie| movie.actors.length }
    end

end
