class Album
  attr_reader (:album_name)

  @@all_albums = []

  define_method(:initialize) do |attributes|
    @album_name = attributes.fetch(:album_name)
  end

  define_singleton_method(:all) do
    @@all_albums
  end

  define_method(:save) do
    @@all_albums.push(self)
  end

end
