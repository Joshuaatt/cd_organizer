require('rspec')
require('artist')

describe(Artist) do
  describe(".all") do
    it("is empty at first") do
      test_artist = Artist.new({:artist_name => nil})
      expect(Artist.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves new artist and returns it") do
      test_artist = Artist.new({:artist_name => "Michael"})
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

end
