# require('rspec')
# require('cd')
#
# describe(CD) do
#   describe("#album") do
#     it("takes and album name for a newly created CD object, and returns the album name") do
#       test_album = CD.new({:album => "Epicodus Rap", :artist => "Michael"})
#       expect(test_album.album()).to(eq("Epicodus Rap"))
#     end
#   end
#
  # describe(".all") do
  #   it("is empty at first") do
  #     test_album = CD.new({:album => nil, :artist => nil})
  #     expect(CD.all()).to(eq([]))
  #   end
  # end
#
#   describe("#save") do
#     it("saves a new album and returns it") do
#       test_cd = CD.new({:album =>"Epicodus Rap", :artist => "Michael"})
#       test_cd.save()
#       test_cd2 = CD.new({:album => "Abbey Road", :artist => "The Beatles"})
#       test_cd2.save()
#       expect(CD.all()).to(eq([test_cd, test_cd2]))
#     end
#   end
#
#   describe(".search") do
#     it("takes an album name and retuns the album name and artist") do
#       test_cd = CD.new({:album =>"Epicodus Rap", :artist => "Michael"})
#       test_cd.save()
#       test_cd2 = CD.new({:album => "Abbey Road", :artist => "The Beatles"})
#       test_cd2.save()
#       expect(CD.search("Epicodus Rap")).to(eq([test_cd]))
#     end
#   end
#
#
#
#
# end
