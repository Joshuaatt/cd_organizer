require('rspec')
require('cd')

describe(CD) do
  describe("#initialize") do
    it("takes album and artist name for a newly created CD object, and returns the CD album name and artist name") do
      test_album = Album.new({:album_name => "Epicodus Rap"})
      test_album.save()
      test_artist = Artist.new({:artist_name => "Michael"})
      test_artist.save()
      expect(test_CD = CD.new({:album => test_album, :artist => test_artist})).to(eq(test_CD))
    end
  end


  describe(".all") do
    it("is empty at first") do
      test_album = CD.new({:album => nil, :artist => nil})
      expect(CD.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a new album and returns it") do
      test_album = Album.new({:album_name => "Epicodus Rap"})
      test_album.save()
      test_artist = Artist.new({:artist_name => "Michael"})
      test_artist.save()
      test_cd = CD.new({:album => test_album, :artist => test_artist})
      test_cd.save()
      test_album2 = Album.new({:album_name => "Abbey Road"})
      test_album2.save()
      test_artist2 = Artist.new({:artist_name => "The Beatles"})
      test_artist2.save()
      test_cd2 = CD.new({:album => test_album2, :artist => test_artist2})
      test_cd2.save()
      expect(CD.all()).to(eq([test_cd, test_cd2]))
    end
  end

  describe(".search") do
    it("takes an album name and retuns the CD") do
      test_album = Album.new({:album_name => "Epicodus Rap"})
      test_album.save()
      test_artist = Artist.new({:artist_name => "Michael"})
      test_artist.save()
      test_cd = CD.new({:album => test_album, :artist => test_artist})
      test_cd.save()
      test_album2 = Album.new({:album_name => "Abbey Road"})
      test_album2.save()
      test_artist2 = Artist.new({:artist_name => "The Beatles"})
      test_artist2.save()
      test_cd2 = CD.new({:album => test_album2, :artist => test_artist2})
      test_cd2.save()
      expect(CD.search("Epicodus Rap")).to(eq(test_album))
    end
  end
end
