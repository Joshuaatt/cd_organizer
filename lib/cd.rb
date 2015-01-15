class CD
  attr_reader(:album, :artist)

  define_method(:initialize) do |attributes|
    @album = attributes.fetch(:album)
    @artist = attributes.fetch(:artist)
  end
end
