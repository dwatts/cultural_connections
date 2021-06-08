require "open-uri"

User.destroy_all
Activity.destroy_all
Category.destroy_all

puts "users,activities and categories were deleted"

puts "creating users and activities"

artCategory = Category.create!(name: "Art")
cemeteryCategory = Category.create!(name: "Cemeteries")
childFriendlyCategory = Category.create!(name: "Child friendly")
cultureCategory = Category.create!(name: "Cultural Institution")
buildingCategory = Category.create!(name: "Famous Buildings")
freeCategory = Category.create!(name: "Free")
historyCategory = Category.create!(name: "History")
historicFigureCategory = Category.create!(name: "Historic Figures")
monumentCategory = Category.create!(name: "Monuments")
museumCategory = Category.create!(name: "Museum")
oldHouseCategory = Category.create!(name: "Old Houses")
sacredCategory = Category.create!(name: "Sacred Places")


userone = User.create ({email: 'francesca@cc.club', username: 'Franci', password: '123456', provider: true})
userone.save!
usertwo = User.create ({email: 'daniel@cc.club', username: 'Dan', password: 'lewagon', provider: true})
usertwo.save!

eldridge = Activity.new({name: 'Museum at Eldridge Street', address: '12 Eldridge Street New York, NY 10002', description: 'The Museum at Eldridge Street is housed in the Eldridge Street Synagogue, a magnificent National Historic Landmark that has been meticulously restored.', provider: usertwo, price: 15, duration: 1, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-219-0302' })
fileOne = URI.open('https://aws-tiqets-cdn.imgix.net/images/content/c9a5bd95b90e4c6e8c8552ae7d7cd96b.jpg?auto=format&fit=crop&ixlib=python-3.2.1&q=25&s=13fe9cb167db03e4ee2a2a183a247086&w=375&h=250&dpr=2.625')
fileTwo = URI.open('https://live.staticflickr.com/1469/25031266725_3803165dd8_b.jpg')
fileThree = URI.open('https://imgs.6sqft.com/wp-content/uploads/2018/09/28162737/Museum-at-Eldridge-Street-6sqft-1-1024x966.jpg')
eldridge.banner_photo.attach(io: fileOne, filename: 'image1.jpg')
eldridge.photos.attach(io: fileTwo, filename: 'image2.jpg')
eldridge.photos.attach(io: fileThree, filename: 'image3.jpg')
eldridge.save!

eldridge.categories << childFriendlyCategory
eldridge.categories << sacredCategory
eldridge.categories << buildingCategory

puts 'eldridge created'

dyckman = Activity.new({name: 'Dyckman Farmhouse Museum Alliance', address: '4881 Broadway, New York, NY 10034', description: 'The Dyckman Farmhouse was home to the Dyckman family for almost a century. It opened as a museum in 1916 and continues to serve the community in a half-acre park.', provider: usertwo, price: 6, duration: 1, available_spots: 5, opening_hours: '10:00 am - 1:00 pm', contact_number: '212-304-9422' })
fileOne = URI.open('https://imgs.6sqft.com/wp-content/uploads/2020/10/19131629/Dyckman-Farmhouse-Museum-Alliance-Exterior6-Credit-Juan-Brizuela.jpg')
fileTwo = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/45/Wyckoff-house.jpg')
fileThree = URI.open('https://i.guim.co.uk/img/media/0ae6de35322a4dcbd3a6a06d21a86d0791230710/0_0_2396_1743/master/2396.jpg?width=700&quality=85&auto=format&fit=max&s=29fdabf7dd93885f260c4676071439a0')
dyckman.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
dyckman.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
dyckman.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
dyckman.save!

dyckman.categories << oldHouseCategory
dyckman.categories << museumCategory
dyckman.categories << childFriendlyCategory

puts 'dyckman created'

wyckoff = Activity.new({name: 'Wyckoff House Museum', address: '5816 Clarendon Road, Brooklyn, NY 11203', description: 'The Wyckoff House Museum cherishes its mission to build connections in our community through our educational and agricultural programs at New York City’s oldest building and the surrounding one-and-a-half acres of park.', provider: usertwo, price: 5, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '718-629-5400' })
fileOne = URI.open('https://brooklyneagle.com/wp-content/uploads/2017/03/wyckoff-house-museum.jpg')
fileTwo = URI.open('https://4.bp.blogspot.com/-0s1yvU9975g/VvgaKoOoKXI/AAAAAAAAB_I/9BIDCsptInk85_fo8_DsTlE4v44EqnohQ/s1600/Wyckoff-House2_credit-Wyckoff-House-Museum_full.jpg')
fileThree = URI.open('https://wp.zillowstatic.com/streeteasy/2/GettyImages-174315895-3fb619.jpg')
wyckoff.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
wyckoff.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
wyckoff.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
wyckoff.save!

wyckoff.categories << oldHouseCategory
wyckoff.categories << childFriendlyCategory
wyckoff.categories << historyCategory

puts 'wyckoff created'

tenement = Activity.new({name: 'Tenement Museum', address: '103 Orchard Street, New York, NY 10002', description: 'The Lower East Side Tenement Museum, located at 97 and 103 Orchard Street in the Lower East Side neighborhood of Manhattan, New York City, is a National Historic Site.', provider: usertwo, price: 25, duration: 1, available_spots: 10, opening_hours: '10:30 am - 5:00 pm', contact_number: '877-975-3786' })
fileOne = URI.open('https://media.timeout.com/images/100436541/image.jpg')
fileTwo = URI.open('https://image.newyorkcity.de/wp-content/uploads/2014/09/Tenement-Museum-in-New-York-Baldizzi-Kitchen-335x252.jpg')
fileThree = URI.open('https://www.amny.com/wp-content/uploads/2020/07/TM_Exterior_Daytime-1024x682.jpg')
tenement.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
tenement.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
tenement.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
tenement.save!

tenement.categories << historyCategory
tenement.categories << museumCategory
tenement.categories << cultureCategory

puts 'tenement created'

morris = Activity.new({name: 'Morris Jumel Mansion', address: '65 Jumel Terrace  New York, NY 10032', description: 'As Manhattan’s oldest  surviving residence, the Morris-Jumel Mansion museum showcases American life by preserving, collecting, and interpreting history, culture, and the arts to engage and inspire its diverse audiences.', provider: usertwo, price: 16, duration: 1, available_spots: 10, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-923-8008' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/fc/2014_Morris-Jumel_Mansion_from_southwest.jpg')
fileTwo = URI.open('https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/a2/4e.jpg')
fileThree = URI.open('https://www.nyc-architecture.com/HAR/Morris-Jumel_2.jpg')
morris.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
morris.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
morris.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
morris.save!

morris.categories << oldHouseCategory
morris.categories << cultureCategory
morris.categories << historicFigureCategory

puts 'morris created'

weeksville = Activity.new({name: 'Weeksville Heritage Center', address: '158 Buffalo Avenue, Brooklyn, NY 11213', description: 'Weeksville Heritage Center is an historic site and cultural center in Central Brooklyn.', provider: usertwo, price: 10, duration: 2, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-756-5250' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/fe/Hunterfly_road_houses.jpg')
fileTwo = URI.open('https://cdn.vox-cdn.com/thumbor/JrMLmoLFBFzEY_wnn5536Q-oKm0=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16215242/weeksville.jpg')
fileThree = URI.open('https://www.brownstoner.com/wp-content/uploads/2018/06/crown-heights-brooklyn-weeksville-links-2018-1.jpg')
weeksville.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
weeksville.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
weeksville.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
weeksville.save!

weeksville.categories << cultureCategory
weeksville.categories << museumCategory
weeksville.categories << childFriendlyCategory

puts 'weeksville created'

transit = Activity.new({name: 'New York Transit Museum', address: '99 Schemerhorn Street, Brooklyn, NY 11201', description: 'The Transit Museum is dedicated to telling and preserving the stories of mass transportation in New York City.', provider: usertwo, price: 10, duration: 2, available_spots: 75, opening_hours: '11:00 am - 5:00 pm', contact_number: '718-694-1600' })
fileOne = URI.open('https://www.nytransitmuseum.org/wp-content/uploads/2020/03/IND-R1-Car-100-1930.-Credit-Black-Paw-Photo.jpg')
fileTwo = URI.open('https://nytransitmuseum.org/wp-content/uploads/2016/05/About.jpg')
fileThree = URI.open('https://upload.wikimedia.org/wikipedia/commons/d/db/The_Squirrels_0043.jpg')
transit.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
transit.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
transit.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
transit.save!

transit.categories << museumCategory
transit.categories << childFriendlyCategory

puts 'transit created'

image = Activity.new({name: 'Museum of the the Moving Image', address: '36-01 35th Avenue, Astoria, NY 11106', description: 'Museum of the Moving Image is the countrys only museum dedicated to the art, history, technique, and technology of the moving image in all its forms. ', provider: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '12:00 pm - 6:00 pm', contact_number: '718-784-0477' })
fileOne = URI.open('https://images.e-flux-systems.com/361181_14d3f19027fc580d3b40f400354de747.jpg,1440')
fileTwo = URI.open('https://archello.s3.eu-central-1.amazonaws.com/images/2019/05/02/1MMI-03.1556787061.3089.jpg')
fileThree = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/01/cd/5f/bc/american-museum-of-the.jpg')
image.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
image.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
image.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
image.save!

image.categories << artCategory
image.categories << cultureCategory
image.categories << museumCategory

puts 'image created'

queens = Activity.new({name: 'Queens Museum', address: '4701 111th St, Queens, NY 11368', description: 'The Queens Museum is dedicated to presenting the highest quality visual arts and educational programming for people in the New York metropolitan area.', provider: userone, price: 0, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 5:00 pm', contact_number: '718-592-9700' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/44/MoMI2.jpg')
fileTwo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Panorama_of_New_York_City.jpg/425px-Panorama_of_New_York_City.jpg')
fileThree = URI.open('http://aasarchitecture.com/wp-content/uploads/2014/03/Queens-Museum-of-Art-Expansion-by-Grimshaw-Architects-02.jpg')
queens.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
queens.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
queens.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
queens.save!

queens.categories << artCategory
queens.categories << cultureCategory
queens.categories << museumCategory
queens.categories << freeCategory

puts 'queens created'

naguchi = Activity.new({name: 'The Naguchi Museum', address: '9-01 33rd Road, Long Island City, NY 11106', description: 'The Noguchi Museum was founded and designed by internationally renowned American artist Isamu Noguchi (1904–1988) for the display of what he considered to be representative examples of his life’s work.', provider: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '11:00 am - 6:00 pm', contact_number: '718-204-7088' })
fileOne = URI.open('https://champ-magazine.com/wp-content/uploads/2019/08/Noguchi_1-1280x0-c-default.jpg')
fileTwo = URI.open('https://www.noguchi.org/wp-content/uploads/2019/09/The-Noguchi-Museum-New-York-Area-3-photo-Nicholas-Knight-2400-1600x900.jpg')
fileThree = URI.open('https://images.e-flux-systems.com/215792_48b5d5534f78eeed68598cb84b6f2403.jpg,1440')
naguchi.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
naguchi.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
naguchi.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
naguchi.save!

naguchi.categories << artCategory
naguchi.categories << museumCategory

puts 'naguchi created'

rubin = Activity.new({name: 'Rubin Museum of Art', address: '150 West 17th Street, New York, NY 10011', description: 'The Rubin Museum of Art is a dynamic environment that stimulates learning, promotes understanding, and inspires personal connections to the ideas, cultures, and art of Himalayan regions.', provider: userone, price: 19, duration: 2, available_spots: 25, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/0/00/Rubin_Museum_of_Art.jpg')
fileTwo = URI.open('https://media.cool-cities.com/rubin_museum001_pr_f_mob.jpg?h=730')
fileThree = URI.open('https://rubinmuseum.org/images/content/7935/awaken__homepage_slider_copy__homepage_carousel_mobile.jpg')
rubin.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
rubin.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
rubin.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
rubin.save!

rubin.categories << artCategory
rubin.categories << museumCategory

puts 'rubin created'

county = Activity.new({name: 'Queens County Farm Museum', address: '73-50 Little Neck Parkway, Queens, NY 11004', description: 'Queens Farm is one of the longest continually farmed sites in New York State, dating back to 1697.  It showcases how a colonial farmstead evolved into a bustling truck farm serving the needs of a growing city.', provider: userone, price: 0, duration: 3, available_spots: 30, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
fileOne = URI.open('https://i0.wp.com/northforker.com/files/2020/09/Queens-County-Farm-Northforker.jpg?fit=640%2C480&ssl=1')
fileTwo = URI.open('https://untappedcities.com/wp-content/uploads/2020/05/Queens-County-Farm-Museum-Floral-Park-NYC-2.jpg')
fileThree = URI.open('https://untappedcities.com/wp-content/uploads/2019/09/Corn-Maze-Maize-Maze-Queens-County-Farm-NYC.jpg')
county.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
county.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
county.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
county.save!

county.categories << artCategory
county.categories << cultureCategory
county.categories << museumCategory
county.categories << freeCategory

puts 'county created'

onderdonck = Activity.new({name: 'The Vander Ende - Onderdonk House', address: '1820 Flushing Avenue Ridgewood, NY', description: 'The Vander Ende-Onderdonk House, located in Ridgewood on the border of Queens and Brooklyn, is the oldest Dutch Colonial stone house in New York City.', provider: usertwo, price: 10, duration: 1, available_spots: 20, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
fileOne = URI.open('https://www.wheretraveler.com/sites/default/files/images/VanderEndeOnderdonkHouse-Matt-Green-Flickr-CC-10934844845_7348c21fbe_k.jpg')
fileTwo = URI.open('https://cdn.wedding-spot.com/images/venues/5249/The-Vander-Ende-Onderdonk-House-Wedding-Ridgewood-NY-2.jpg')
fileThree = URI.open('https://junipercivic.com/wp-content/uploads/2020/09/onderdonk.jpeg')
onderdonck.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
onderdonck.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
onderdonck.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
onderdonck.save!

onderdonck.categories << oldHouseCategory
onderdonck.categories << museumCategory
onderdonck.categories << historyCategory

puts 'onderdonk created'

psone = Activity.new({name: 'MoMA PS1', address: '25-22 Jackson Avenue, Long Island City, NY 11101', description: 'At The Museum of Modern Art and MoMA PS1, we’re committed to sharing the most thought-provoking modern and contemporary art, and hope you will join us in exploring the art, ideas, and issues of our time.', provider: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 8:00 pm', contact_number: '212-708-9400' })
fileOne = URI.open('https://www.moma.org/d/p/sa/ps1-archives.jpg')
fileTwo = URI.open('https://upload.wikimedia.org/wikipedia/en/a/a3/MoMA_PS1_FFP.jpg')
fileThree = URI.open('https://static.dezeen.com/uploads/2019/07/horama-rama-pedro-juana-design-installation-moma-ps1-queens-new-york-city-usa_dezeen_2364_sq2-411x411.jpg')
psone.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
psone.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
psone.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
psone.save!

psone.categories << artCategory
psone.categories << cultureCategory
psone.categories << museumCategory

puts 'psone created'

hamilton = Activity.new({name: 'Hamilton Grange National Memorial', address: '414 West 141st Street, New York, NY 10031', description: 'The Grange is believed to be the only home Alexander Hamilton ever owned. Over the years, it has been an investment for a real estate speculator, a foreclosed property, a chapel, and a National Memorial. The building has been moved twice.', provider: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '10:00 am - 4:00 pm', contact_number: '646-548-2310' })
fileOne = URI.open('https://media.architecturaldigest.com/photos/5727cf2dc8914cdb3ed263c1/master/w_1937,h_1331,c_limit/alexander-hamilton-architectural-sites-01.jpg')
fileTwo = URI.open('https://upload.wikimedia.org/wikipedia/commons/b/ba/Hamilton_Grange_late_2010_morn_jeh.jpg')
fileThree = URI.open('https://cronobook.com/st/l/c57c8f2d-d6ca-42c1-aad0-d69b3d06ec86.jpg')
hamilton.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
hamilton.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
hamilton.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
hamilton.save!

hamilton.categories << historyCategory
hamilton.categories << historicFigureCategory
hamilton.categories << museumCategory
hamilton.categories << freeCategory

puts 'hamilton created'

merchant = Activity.new({name: 'Merchants House Museum', address: '29 East 4th Street, New York, NY 10003', description: 'The Merchants House Museum, known formerly as the Old Merchants House and as the Seabury Tredwell House, is the only nineteenth-century family home in New York City preserved intact.', provider: usertwo, price: 15, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '212-777-1089' })
fileOne = URI.open('https://boweryboogie-wpengine.netdna-ssl.com/content/uploads/2018/06/merchant-house-NYPL-637x500.jpg')
fileTwo = URI.open('https://www.brownstoner.com/wp-content/uploads/2010/07/merchants-house-museum-manhattan.jpg')
fileThree = URI.open('https://www.nypap.org/wp-content/uploads/2016/04/OldMerchant.jpg')
merchant.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
merchant.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
merchant.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
merchant.save!

merchant.categories << oldHouseCategory
merchant.categories << historyCategory
merchant.categories << museumCategory

puts 'merchant created'

roosevelt = Activity.new({name: 'Theodore Roosevelt Birthplace', address: '28 East 20th Street, New York, NY 10003', description: 'The boyhood home of the first U.S. president to be born in New York City. Raised in a townhouse at 28 E. 20th St., Theodore Roosevelt would grow up to be the 26th US President.', provider: usertwo, price: 0, duration: 2, available_spots: 15, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-260-1616' })
fileOne = URI.open('https://www.nps.gov/afbg/images/1923-House1.jpg')
fileTwo = URI.open('https://www.nycgo.com/images/venues/5366/theodore-roosevelt-birthplace-malcolm-brown-2__large.jpg')
fileThree = URI.open('https://untappedcities.com/wp-content/uploads/2019/03/teddy-roosevelt-birthplace-nyc-untapped-cities1.jpg')
roosevelt.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
roosevelt.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
roosevelt.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
roosevelt.save!

roosevelt.categories << historyCategory
roosevelt.categories << historicFigureCategory
roosevelt.categories << museumCategory
roosevelt.categories << freeCategory

puts 'roosevelt created'

bkmuseum = Activity.new({name: 'Brooklyn Museum', address: '200 Eastern Parkway, Brooklyn, NY 11238', description: 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn', provider: usertwo, price: 16, duration: 3, available_spots: 200, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-638-5000' })
fileOne = URI.open('https://www.nycgo.com/images/events/37341/brooklynmuseum-adam_husted__large__large.jpg')
fileTwo = URI.open('https://media.timeout.com/images/105703003/image.jpg')
fileThree = URI.open('https://www.marketplace.org/wp-content/uploads/2020/09/museum.jpg?fit=2880%2C1621')
bkmuseum.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
bkmuseum.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
bkmuseum.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
bkmuseum.save!

bkmuseum.categories << artCategory
bkmuseum.categories << cultureCategory
bkmuseum.categories << museumCategory

puts 'bk museum created'

grant = Activity.new({name: 'General Grant National Memorial', address: 'West 122nd Street & Riverside Drive, New York, NY 10027', description: 'The final resting place of President Ulysses S. Grant and his wife, Julia. The building is the largest mausoleum in North America.', provider: usertwo, price: 0, duration: 2, available_spots: 50, opening_hours: '9:00 am - 5:00 pm', contact_number: '646-670-7251' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/USA_grants_tomb.jpg/1200px-USA_grants_tomb.jpg')
fileTwo = URI.open('https://upload.wikimedia.org/wikipedia/commons/a/a9/Grants_tomb_2007.JPG')
fileThree = URI.open('https://live.staticflickr.com/4096/4921118729_be9c67e800_b.jpg')
grant.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
grant.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
grant.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
grant.save!

grant.categories << monumentCategory
grant.categories << historicFigureCategory
grant.categories << freeCategory

puts 'grant created'

cathedral = Activity.new({name: 'Cathedral of St. John the Divine', address: '1047 Amsterdam Avenue, New York, NY 10025', description: 'The Cathedral Church of Saint John the Divine, the mother church of the Episcopal Diocese of New York and the Seat of its Bishop, is chartered as a house of prayer for all people and a unifying center of intellectual light and leadership', provider: usertwo, price: 5, duration: 2, available_spots: 200, opening_hours: '9:30 am - 5:00 pm', contact_number: '212-316-7540' })
fileOne = URI.open('https://www.masonrymagazine.com/wp-content/uploads/2018/01/MCAA_CATHEDRAL_OF_ST_JOHN_THE-DEVINE_015.jpg')
fileTwo = URI.open('https://newyorkaktuell.nyc/app/uploads/2019/03/Cathedral-of-St.-John-the-Divine-Red-Bull-Music-Festival-NYC.jpg')
fileThree = URI.open('https://i.pinimg.com/originals/f1/8d/35/f18d358f98c88c8c6d0df999453e4af9.jpg')
cathedral.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
cathedral.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
cathedral.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
cathedral.save!

cathedral.categories << sacredCategory
cathedral.categories << buildingCategory

puts 'cathedral created'

seaport = Activity.new({name: 'South Street Seaport Museum', address: '12 Fulton Street, New York, NY 10038', description: 'The South Street Seaport Museum preserves and interprets the ​origins and growth of New York City as a world port, a place where goods, labor, and cultures are exchanged through work, commerce, and the interaction of diverse communities.', provider: usertwo, price: 20, duration: 2, available_spots: 50, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-748-8600' })
fileOne = URI.open('https://3wtd2s41ym0o1nx37z2vg3gm-wpengine.netdna-ssl.com/wp-content/uploads/2019/08/sssm-bowne-768x512.jpg')
fileTwo = URI.open('https://6tocelebrate.org/wp-content/uploads/2016/08/8-SSSM-Ships-Peking.jpg')
fileThree = URI.open('https://3wtd2s41ym0o1nx37z2vg3gm-wpengine.netdna-ssl.com/wp-content/uploads/2020/09/OUR-CITY-SLIDER_50th_Anniv_Kickoff_20170429_JamesKeivom_Y_Print_0010-2048x1060-1.jpg')
seaport.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
seaport.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
seaport.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
seaport.save!

seaport.categories << historyCategory
seaport.categories << museumCategory
seaport.categories << cultureCategory

puts 'seaport created'

burial = Activity.new({name: 'African Burial Ground National Monument', address: '290 Broadway, New York, NY 10007', description: 'African Burial Ground is the oldest and largest known excavated burial ground in North America for both free and enslaved Africans. It protects the historic role slavery played in building New York.', provider: usertwo, price: 0, duration: 2, available_spots: 25, opening_hours: '10:00 am - 4:00 pm', contact_number: '212-637-2019' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/e8/African_National_Monument-1.jpg')
fileTwo = URI.open('https://npplan.com/wp-content/uploads/2017/10/African-Burial-Ground-001.jpg')
fileThree = URI.open('https://www.amny.com/wp-content/uploads/2021/04/amNY_PresserGillibrand_040121_Holtermann-16-scaled.jpeg')
burial.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
burial.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
burial.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
burial.save!

burial.categories << sacredCategory
burial.categories << cemeteryCategory
burial.categories << museumCategory
burial.categories << freeCategory

puts 'burial created'

greenwood = Activity.new({name: 'Green-Wood Cemetery', address: '500 25th Street, Brooklyn, NY 11232', description: 'Green-Wood is a living cemetery that brings people closer to the world as it is and was, by memorializing the dead and bringing to life the art, history, and natural beauty of New York City.', provider: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '718-210-3080' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/e1/2015_Green-Wood_Cemetery_Gate_from_inside.jpg')
fileTwo = URI.open('https://www.brownstoner.com/wp-content/uploads/2020/07/greenwood-cemetery-brooklyn-architecture-arts-2019-2.jpg')
fileThree = URI.open('https://imgs.6sqft.com/wp-content/uploads/2020/05/04131051/Green-Wood-Cemetery-.jpg')
greenwood.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
greenwood.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
greenwood.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
greenwood.save!

greenwood.categories << cemeteryCategory
greenwood.categories << freeCategory

puts 'greenwood created'

richmond = Activity.new({name: 'Historic Richmond Town', address: '441 Clarke Avenue, Staten Island, NY 10306', description: 'Historic Richmond Town is a remarkable living-history village and museum complex that evokes 300 years  of history, arts and culture on Staten Island.', provider: usertwo, price: 10, duration: 4, available_spots: 100, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-351-1611' })
fileOne = URI.open('https://live.staticflickr.com/8047/8092042786_1300b62657_b.jpg')
fileTwo = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0d/cb/5f/71/historic-buildings.jpg')
fileThree = URI.open('https://static.smarttravelapp.com/data/pois/14600_HistoricRichmondTown4_1511602895.jpg')
richmond.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
richmond.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
richmond.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
richmond.save!

richmond.categories << oldHouseCategory
richmond.categories << museumCategory
richmond.categories << historyCategory

puts 'richmond created'

snug = Activity.new({name: 'Sailors Snug Harbor', address: '1000 Richmond Terrace, Staten Island, NY 10301', description: 'Sailors Snug Harbor, also known as Sailors Snug Harbor and informally as Snug Harbor, is a collection of architecturally significant 19th-century buildings on Staten Island, New York City.', provider: usertwo, price: 0, duration: 3, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-425-3504' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/64/Sailors-snug-harbor.jpg')
fileTwo = URI.open('https://www.nyclgbtsites.org/wp-content/uploads/2020/04/P1000030_Moment2.jpg')
fileThree = URI.open('https://static01.nyt.com/images/2019/08/29/nyregion/28summer-newsletter/28summer-newsletter-superJumbo-v2.jpg')
snug.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
snug.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
snug.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
snug.save!

snug.categories << oldHouseCategory
snug.categories << museumCategory
snug.categories << historyCategory
snug.categories << freeCategory

puts 'snug created'

morgan = Activity.new({name: 'The Morgan Library & Museum', address: '225 Madison Avenue, New York, NY 10016', description: 'The Morgan Library & Museum, formerly the Pierpont Morgan Library, is a museum and research library in the Murray Hill neighborhood of Manhattan in New York City.', provider: usertwo, price: 22, duration: 4, available_spots: 50, opening_hours: '10:30 am - 5:00 pm', contact_number: '212-685-0008' })
fileOne = URI.open('https://www.themorgan.org/sites/default/files/slider-image/Pierpont-Morgans-Library-bs.jpg')
fileTwo = URI.open('https://i.pinimg.com/originals/84/44/25/844425d57fcbf5db7999c532a4fc74f9.jpg')
fileThree = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/e0/Pierpont_Morgan_Library_NY_2006_crop.jpg')
morgan.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
morgan.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
morgan.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
morgan.save!

morgan.categories << artCategory
morgan.categories << buildingCategory
morgan.categories << museumCategory

puts 'morgan created'

barge = Activity.new({name: 'Waterfront Barge Museum', address: '290 Conover Street, Brooklyn, NY 11231', description: 'The Museum offers free Open Boat Tours every Thursday 4-8pm and Saturday 1-5pm. In addition, we are open year-round for school and group tours by appointment and feature many performances, art exhibits, and other special events throughout the year.', provider: usertwo, price: 0, duration: 1, available_spots: 5, opening_hours: '10:00 am - 4:00 pm', contact_number: '718-624-4719' })
fileOne = URI.open('https://16i6gh56tq32drqt6349zrmt-wpengine.netdna-ssl.com/wp-content/uploads/2014/03/waterfrontmuseum_004.jpg')
fileTwo = URI.open('https://blankslatepages.s3.amazonaws.com/54173be9b0839-the-waterfront-museum-red-hook-brooklyn-barge-tour-nyc.jpg')
fileThree = URI.open('https://2.bp.blogspot.com/-qgeT7HGTSkk/Vj3_as5rBgI/AAAAAAAACU0/-r3gGE1lBYk/s1600/Red-Hook-Waterfront-Museum-Barge-2.jpg')
barge.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
barge.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
barge.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
barge.save!

barge.categories << historyCategory
barge.categories << museumCategory
barge.categories << freeCategory

puts 'barge created'

woolworth = Activity.new({name: 'The Woolworth Building', address: '233 Broadway, New York, NY 10003', description: 'The Woolworth Building transformed New York City’s skyline and remains one of the most famous skyscrapers in the country. It is a Gothic marvel designed by architect Cass Gilbert for millionaire five-and-dime storeowner Frank W. Woolworth.', provider: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '11:00 am - 3:00 pm', contact_number: '203-966-9663' })
fileOne = URI.open('https://media.timeout.com/images/103384203/630/472/image.jpg')
fileTwo = URI.open('https://media.tacdn.com/media/attractions-splice-spp-674x446/09/ea/a4/9b.jpg')
fileThree = URI.open('https://static01.nyt.com/images/2012/08/07/nyregion/07woolworth_cnd/07woolworth_cnd-superJumbo.jpg')
woolworth.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
woolworth.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
woolworth.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
woolworth.save!

woolworth.categories << buildingCategory
woolworth.categories << freeCategory

puts 'woolworth created'

stone = Activity.new({name: 'The Old Stone House', address: '336 3rd Street Brooklyn, NY 11215', description: 'Originally built by Claes Vechte in 1699, this reconstructed house, with its solid stone walls and high brick gables, is a landmark in American military and sports history.', provider: usertwo, price: 3, duration: 1, available_spots: 15, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-768-3195' })
fileOne = URI.open('http://nyccheaptravel.com/wp-content/uploads/2017/02/Old-stone-house-brooklyn.jpg')
fileTwo = URI.open('https://i.pinimg.com/originals/78/47/e7/7847e7e8749dffab17bb020154fabc50.jpg')
fileThree = URI.open('https://content1.getnarrativeapp.com/static/52fa986c-1818-491b-9a35-4db6529bd88e/old-stone-house-wedding-park-slope-lgbt-lesbian-same-sex-venue-ideas-purple-dress-andrea-reese.jpg?w=1000')
stone.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
stone.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
stone.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
stone.save!

stone.categories << oldHouseCategory
stone.categories << childFriendlyCategory
stone.categories << museumCategory

puts 'stone created'

poe = Activity.new({name: 'Edgar Allen Poe Cottage', address: '2640 Grand Concourse, Bronx, NY 10458', description: 'The home of Edgar Allen Poe for a brief period. He lived in the cottage with his wife Virginia. Virginia died in the cottage and Poe himself died two years later in Baltimore in 1847.', provider: usertwo, price: 10, duration: 1, available_spots: 5, opening_hours: '10:00 am - 3:00 pm', contact_number: '718-881-8900' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/9/99/Edgar_Allan_Poe%27s_house_in_the_Bronx.jpg')
fileTwo = URI.open('https://www.nycgo.com/images/made/941cf8c27e582561/EdgarAllenPoeCottage_JulienneSchaer_016_900_600_70.jpg')
fileThree = URI.open('https://www.wheretraveler.com/sites/default/files/images/Poe-Cottage.jpeg')
poe.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
poe.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
poe.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
poe.save!

poe.categories << historicFigureCategory
poe.categories << oldHouseCategory

puts 'poe created'

cooper = Activity.new({name: 'Cooper Hewitt Design Museum', address: '2 East 91st Street New York, NY 10128', description: 'Cooper Hewitt is the only museum in the United States devoted exclusively to historical and contemporary design, and is the steward of one of the most diverse and comprehensive design collections in existence', provider: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-849-8400' })
fileOne = URI.open('https://www.si.edu/sites/default/files/newsdesk/fact_sheets/chndm.jpg')
fileTwo = URI.open('https://untappedcities.com/wp-content/uploads/2015/06/Cooper-Hewitt-Smithsonian-Design-Museum-Garden-Upper-East-Side-5th-Avenue-NYC-3-1.jpg')
fileThree = URI.open('https://retaildesignblog.net/wp-content/uploads/2016/03/Thom-Browne-Selects-exhibition-at-Cooper-Hewitt-Smithsonian-Design-Museum-New-York-City-720x480.jpg')
cooper.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
cooper.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
cooper.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
cooper.save!

cooper.categories << artCategory
cooper.categories << museumCategory
cooper.categories << freeCategory

puts 'cooper created'

mcny = Activity.new({name: 'Museum of the City of New York', address: '1220 5th Avenue, New York, NY 10029', description: 'The Museum of the City of New York fosters understanding of the distinctive nature of urban life in the world’s most influential metropolis. It engages visitors by celebrating, documenting, and interpreting the city’s past, present, and future.', provider: usertwo, price: 20, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-534-1672' })
fileOne = URI.open('https://media.timeout.com/images/100678525/630/472/image.jpg')
fileTwo = URI.open('https://media.timeout.com/images/105668741/image.jpg')
fileThree = URI.open('https://www.nycgo.com/images/venues/618/16_museumofthecityofnewyork_marleywhite_8553__large.jpg')
mcny.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
mcny.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
mcny.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
mcny.save!

mcny.categories << museumCategory
mcny.categories << childFriendlyCategory

puts 'mcny created'

frick = Activity.new({name: 'The Frick Collection', address: '1 East 70th Street, New York, NY 10021', description: 'Internationally recognized as a premier museum and research center, the Frick is known for its distinguished Old Master paintings and outstanding examples of European sculpture and decorative arts.', provider: usertwo, price: 22, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-288-0700' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/41/Henry_C_Frick_House_001.JPG')
fileTwo = URI.open('https://s.wsj.net/public/resources/images/BN-NG224_NYFRIC_P_20160324125243.jpg')
fileThree = URI.open('https://apollo.imgix.net/content/uploads/2020/04/13_Living_Hall_2008_2000.jpg?auto=compress,format&w=900&h=600')
frick.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
frick.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
frick.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
frick.save!

frick.categories << museumCategory
frick.categories << artCategory
frick.categories << cultureCategory

puts 'frick created'

<<<<<<< HEAD
barrio = Activity.new({name: 'El Museo del Barrio', address: '1230 5th Avenue, New York, NY 10029', description: 'New York’s leading Latino cultural institution, welcomes visitors of all backgrounds to discover the artistic landscape of Latino, Caribbean, and Latin American cultures.', user: usertwo, price: 9, duration: 3, available_spots: 125, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-831-7272' })
fileOne = URI.open('https://repeatingislands.files.wordpress.com/2009/09/el-museo-2.jpg')
=======
barrio = Activity.new({name: 'El Museo del Barrio', address: '1230 5th Avenue, New York, NY 10029', description: 'New York’s leading Latino cultural institution, welcomes visitors of all backgrounds to discover the artistic landscape of Latino, Caribbean, and Latin American cultures.', provider: usertwo, price: 9, duration: 3, available_spots: 125, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-831-7272' })
fileOne = URI.open('https://c8.alamy.com/compde/hg79hk/new-york-ny-nyc-new-york-city-manhattan-spanish-harlem-el-museo-del-barrio-kunst-museum-theater-theater-el-teatro-eingang-sightseeing-visi-hg79hk.jpg')
>>>>>>> master
fileTwo = URI.open('https://lovingnewyork.de/wp-content/uploads/2019/01/Museo-del-Barrio-NYC-190128122402011-1600x800.jpg')
fileThree = URI.open('https://static01.nyt.com/images/2010/06/11/arts/11ferrerspan-1/11ferrer-2-articleLarge.jpg')
barrio.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
barrio.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
barrio.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
barrio.save!

barrio.categories << cultureCategory
barrio.categories << artCategory
barrio.categories << museumCategory

puts 'barrio created'

neue = Activity.new({name: 'Neue Galerie New York', address: '1048 5th Avenue, New York, NY 10028', description: 'Neue Galerie New York is a museum devoted to early twentieth-century German and Austrian art and design, displayed on two exhibition floors. The collection features art from Vienna circa 1900.', provider: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-628-6200' })
fileOne = URI.open('https://upload.wikimedia.org/wikipedia/commons/f/f0/Neue_Gallery_%2848059179353%29.jpg')
fileTwo = URI.open('https://www.newyorkcity.de/wp-content/uploads/2019/06/Neue-Galerie-in-New-York-Aussenansicht-335x252.jpg')
fileThree = URI.open('https://pbs.twimg.com/media/D-uYMATVAAArfm5.jpg')
neue.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
neue.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
neue.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
neue.save!

neue.categories << museumCategory
neue.categories << artCategory

puts 'neue created'

puts "Users, categories and activities have been created"
