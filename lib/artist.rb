class Artist
  attr_reader (:artist_name)

  @@all_artists = []

  define_method(:initialize) do |attributes|
    @artist_name = attributes.fetch(:artist_name)
  end

  define_singleton_method(:all) do
    @@all_artists
  end

  define_method(:save) do
    @@all_artists.push(self)
  end

end
