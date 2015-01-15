class CD
  attr_reader(:album, :artist)

  define_method(:initilize) do |album, artist|
    @album = album
    @artist = artist
  end


end
