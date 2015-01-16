class CD
  attr_reader(:album, :artist)

  @@all_cds = []

  define_method(:initialize) do |attributes|
    @album = attributes.fetch(:album)
    @artist = attributes.fetch(:artist)
  end

  define_singleton_method(:all) do
    @@all_cds
  end

  define_method(:save) do
    @@all_cds.push(self)
  end

  define_singleton_method(:search) do |search_word|
    found_album = nil
    @@all_cds.each() do |test_cd|
      if test_cd.album.album_name == search_word
        return found_album = test_cd.album
      end
    end
    found_album
  end
end
