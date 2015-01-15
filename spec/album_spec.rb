require('rspec')
require('album')

describe(Album) do
  describe(".all") do
    it("is empty at first") do
      test_artist = Album.new({:album_name => nil})
      expect(Album.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves new album name and returns it") do
      test_album = Album.new({:album_name => "Michael"})
      test_album.save()
      expect(Album.all()).to(eq([test_album]))
    end
  end

end
