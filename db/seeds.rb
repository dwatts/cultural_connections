User.destroy_all
Activity.destroy_all

puts "users and activities were deleted"

puts "creating users and activities"

userone = User.create ({email: 'francesca@cc.club', username: 'Franci', password: '123456'})
userone.save!
usertwo = User.create ({email: 'daniel@cc.club', username: 'Dan', password: 'lewagon'})
usertwo.save!

eldridge = Activity.new({name: 'Museum at Eldridge Street', address: '12 Eldridge Street New York, NY 10002', description: 'The Museum at Eldridge Street is housed in the Eldridge Street Synagogue, a magnificent National Historic Landmark that has been meticulously restored.', user: usertwo, price: 15, duration: 1, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-219-0302' })
eldridge.save!

dyckman = Activity.new({name: 'Dyckman Farmhouse Museum Alliance', address: '4881 Broadway, New York, NY 10034', description: 'The Dyckman Farmhouse was home to the Dyckman family for almost a century. It opened as a museum in 1916 and continues to serve the community in a half-acre park.', user: usertwo, price: 6, duration: 1, available_spots: 5, opening_hours: '10:00 am - 1:00 pm', contact_number: '212-304-9422' })
dyckman.save!

wyckoff = Activity.new({name: 'Wyckoff House Museum', address: '5816 Clarendon Road, Brooklyn, NY 11203', description: 'The Wyckoff House Museum cherishes its mission to build connections in our community through our educational and agricultural programs at New York City’s oldest building and the surrounding one-and-a-half acres of park.', user: usertwo, price: 5, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '718-629-5400' })
wyckoff.save!

tenement = Activity.new({name: 'Tenement Museum', address: '103 Orchard Street, New York, NY 10002', description: 'The Lower East Side Tenement Museum, located at 97 and 103 Orchard Street in the Lower East Side neighborhood of Manhattan, New York City, is a National Historic Site.', user: usertwo, price: 25, duration: 1, available_spots: 10, opening_hours: '10:30 am - 5:00 pm', contact_number: '877-975-3786' })
tenement.save!

morris = Activity.new({name: 'Morris Jumel Mansion', address: '65 Jumel Terrace  New York, NY 10032', description: 'As Manhattan’s oldest  surviving residence, the Morris-Jumel Mansion museum showcases American life by preserving, collecting, and interpreting history, culture, and the arts to engage and inspire its diverse audiences.', user: usertwo, price: 16, duration: 1, available_spots: 10, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-923-8008' })
morris.save!

weeksville = Activity.new({name: 'Weeksville Heritage Center', address: '158 Buffalo Avenue, Brooklyn, NY 11213', description: 'Weeksville Heritage Center is an historic site and cultural center in Central Brooklyn.', user: usertwo, price: 10, duration: 2, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-756-5250' })
weeksville.save!

transit = Activity.new({name: 'New York Transit Museum', address: '99 Schemerhorn Street, Brooklyn, NY 11201', description: 'The Transit Museum is dedicated to telling and preserving the stories of mass transportation in New York City.', user: usertwo, price: 10, duration: 2, available_spots: 75, opening_hours: '11:00 am - 5:00 pm', contact_number: '718-694-1600' })
transit.save!

image = Activity.new({name: 'Museum of the the Moving Image', address: '36-01 35th Avenue, Astoria, NY 11106', description: 'Museum of the Moving Image is the countrys only museum dedicated to the art, history, technique, and technology of the moving image in all its forms. ', user: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '12:00 pm - 6:00 pm', contact_number: '718-784-0477' })
image.save!

queens = Activity.new({name: 'Queens Museum', address: '4701 111th St, Queens, NY 11368', description: 'The Queens Museum is dedicated to presenting the highest quality visual arts and educational programming for people in the New York metropolitan area.', user: userone, price: 0, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 5:00 pm', contact_number: '718-592-9700' })
queens.save!

naguchi = Activity.new({name: 'The Naguchi Museum', address: '9-01 33rd Road, Long Island City, NY 11106', description: 'The Noguchi Museum was founded and designed by internationally renowned American artist Isamu Noguchi (1904–1988) for the display of what he considered to be representative examples of his life’s work.', user: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '11:00 am - 6:00 pm', contact_number: '718-204-7088' })
naguchi.save!

rubin = Activity.new({name: 'Rubin Museum of Art', address: '150 West 17th Street, New York, NY 10011', description: 'The Rubin Museum of Art is a dynamic environment that stimulates learning, promotes understanding, and inspires personal connections to the ideas, cultures, and art of Himalayan regions.', user: userone, price: 19, duration: 2, available_spots: 25, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
rubin.save!

county = Activity.new({name: 'Queens County Farm Museum', address: '73-50 Little Neck Parkway, Queens, NY 11004', description: 'Queens Farm is one of the longest continually farmed sites in New York State, dating back to 1697.  It showcases how a colonial farmstead evolved into a bustling truck farm serving the needs of a growing city.', user: userone, price: 0, duration: 3, available_spots: 30, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
county.save!

onderdonck = Activity.new({name: 'The Vander Ende - Onderdonk House', address: '1820 Flushing Avenue Ridgewood, NY', description: 'The Vander Ende-Onderdonk House, located in Ridgewood on the border of Queens and Brooklyn, is the oldest Dutch Colonial stone house in New York City.', user: usertwo, price: 10, duration: 1, available_spots: 20, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
onderdonck.save!

psone = Activity.new({name: 'MoMA PS1', address: '25-22 Jackson Avenue, Long Island City, NY 11101', description: 'At The Museum of Modern Art and MoMA PS1, we’re committed to sharing the most thought-provoking modern and contemporary art, and hope you will join us in exploring the art, ideas, and issues of our time.', user: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 8:00 pm', contact_number: '212-708-9400' })
psone.save!

hamilton = Activity.new({name: 'Hamilton Grange National Memorial', address: '414 West 141st Street, New York, NY 10031', description: 'The Grange is believed to be the only home Alexander Hamilton ever owned. Over the years, it has been an investment for a real estate speculator, a foreclosed property, a chapel, and a National Memorial. The building has been moved twice.', user: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '10:00 am - 4:00 pm', contact_number: '646-548-2310' })
hamilton.save!

merchant = Activity.new({name: 'Merchants House Museum', address: '29 East 4th Street, New York, NY 10003', description: 'The Merchants House Museum, known formerly as the Old Merchants House and as the Seabury Tredwell House, is the only nineteenth-century family home in New York City preserved intact.', user: usertwo, price: 15, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '212-777-1089' })
merchant.save!

roosevelt = Activity.new({name: 'Theodore Roosevelt Birthplace', address: '28 East 20th Street, New York, NY 10003', description: 'The boyhood home of the first U.S. president to be born in New York City. Raised in a townhouse at 28 E. 20th St., Theodore Roosevelt would grow up to be the 26th US President.', user: usertwo, price: 0, duration: 2, available_spots: 15, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-260-1616' })
roosevelt.save!

bkmuseum = Activity.new({name: 'Brooklyn Museum', address: '200 Eastern Parkway, Brooklyn, NY 11238', description: 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn', user: usertwo, price: 16, duration: 3, available_spots: 200, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-638-5000' })
bkmuseum.save!

grant = Activity.new({name: 'General Grant National Memorial', address: 'West 122nd Street & Riverside Drive, New York, NY 10027', description: 'The final resting place of President Ulysses S. Grant and his wife, Julia. The building is the largest mausoleum in North America.', user: usertwo, price: 0, duration: 2, available_spots: 50, opening_hours: '9:00 am - 5:00 pm', contact_number: '646-670-7251' })
grant.save!

cathedral = Activity.new({name: 'Cathedral of St. John the Divine', address: '1047 Amsterdam Avenue, New York, NY 10025', description: 'The Cathedral Church of Saint John the Divine, the mother church of the Episcopal Diocese of New York and the Seat of its Bishop, is chartered as a house of prayer for all people and a unifying center of intellectual light and leadership', user: usertwo, price: 5, duration: 2, available_spots: 200, opening_hours: '9:30 am - 5:00 pm', contact_number: '212-316-7540' })
cathedral.save!

seaport = Activity.new({name: 'South Street Seaport Museum', address: '12 Fulton Street, New York, NY 10038', description: 'The South Street Seaport Museum preserves and interprets the ​origins and growth of New York City as a world port, a place where goods, labor, and cultures are exchanged through work, commerce, and the interaction of diverse communities.', user: usertwo, price: 20, duration: 2, available_spots: 50, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-748-8600' })
seaport.save!

burial = Activity.new({name: 'African Burial Ground National Monument', address: '290 Broadway, New York, NY 10007', description: 'African Burial Ground is the oldest and largest known excavated burial ground in North America for both free and enslaved Africans. It protects the historic role slavery played in building New York.', user: usertwo, price: 0, duration: 2, available_spots: 25, opening_hours: '10:00 am - 4:00 pm', contact_number: '212-637-2019' })
burial.save!

greenwood = Activity.new({name: 'Green-Wood Cemetery', address: '500 25th Street, Brooklyn, NY 11232', description: 'Green-Wood is a living cemetery that brings people closer to the world as it is and was, by memorializing the dead and bringing to life the art, history, and natural beauty of New York City.', user: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '718-210-3080' })
greenwood.save!

richmond = Activity.new({name: 'Historic Richmond Town', address: '441 Clarke Avenue, Staten Island, NY 10306', description: 'Historic Richmond Town is a remarkable living-history village and museum complex that evokes 300 years  of history, arts and culture on Staten Island.', user: usertwo, price: 10, duration: 4, available_spots: 100, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-351-1611' })
richmond.save!

snug = Activity.new({name: 'Sailors Snug Harbor', address: '1000 Richmond Terrace, Staten Island, NY 10301', description: 'Sailors Snug Harbor, also known as Sailors Snug Harbor and informally as Snug Harbor, is a collection of architecturally significant 19th-century buildings on Staten Island, New York City.', user: usertwo, price: 0, duration: 3, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-425-3504' })
snug.save!

morgan = Activity.new({name: 'The Morgan Library & Museum', address: '225 Madison Avenue, New York, NY 10016', description: 'The Morgan Library & Museum, formerly the Pierpont Morgan Library, is a museum and research library in the Murray Hill neighborhood of Manhattan in New York City.', user: usertwo, price: 22, duration: 4, available_spots: 50, opening_hours: '10:30 am - 5:00 pm', contact_number: '212-685-0008' })
morgan.save!

barge = Activity.new({name: 'Waterfront Barge Museum', address: '290 Conover Street, Brooklyn, NY 11231', description: 'The Museum offers free Open Boat Tours every Thursday 4-8pm and Saturday 1-5pm. In addition, we are open year-round for school and group tours by appointment and feature many performances, art exhibits, and other special events throughout the year.', user: usertwo, price: 0, duration: 1, available_spots: 5, opening_hours: '10:00 am - 4:00 pm', contact_number: '718-624-4719' })
barge.save!

woolworth = Activity.new({name: 'The Woolworth Building', address: '233 Broadway, New York, NY 10003', description: 'The Woolworth Building transformed New York City’s skyline and remains one of the most famous skyscrapers in the country. It is a Gothic marvel designed by architect Cass Gilbert for millionaire five-and-dime storeowner Frank W. Woolworth.', user: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '11:00 am - 3:00 pm', contact_number: '203-966-9663' })
woolworth.save!

stone = Activity.new({name: 'The Old Stone House', address: '336 3rd Street Brooklyn, NY 11215', description: 'Originally built by Claes Vechte in 1699, this reconstructed house, with its solid stone walls and high brick gables, is a landmark in American military and sports history.', user: usertwo, price: 3, duration: 1, available_spots: 15, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-768-3195' })
stone.save!

poe = Activity.new({name: 'Edgar Allen Poe Cottage', address: '2640 Grand Concourse, Bronx, NY 10458', description: 'The home of Edgar Allen Poe for a brief period. He lived in the cottage with his wife Virginia. Virginia died in the cottage and Poe himself died two years later in Baltimore in 1847.', user: usertwo, price: 10, duration: 1, available_spots: 5, opening_hours: '10:00 am - 3:00 pm', contact_number: '718-881-8900' })
poe.save!

cooper = Activity.new({name: 'Cooper Hewitt Design Museum', address: '2 East 91st Street New York, NY 10128', description: 'Cooper Hewitt is the only museum in the United States devoted exclusively to historical and contemporary design, and is the steward of one of the most diverse and comprehensive design collections in existence', user: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-849-8400' })
cooper.save!

mcny = Activity.new({name: 'Museum of the City of New York', address: '1220 5th Avenue, New York, NY 10029', description: 'The Museum of the City of New York fosters understanding of the distinctive nature of urban life in the world’s most influential metropolis. It engages visitors by celebrating, documenting, and interpreting the city’s past, present, and future.', user: usertwo, price: 20, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-534-1672' })
mcny.save!

frick = Activity.new({name: 'The Frick Collection', address: '1 East 70th Street, New York, NY 10021', description: 'Internationally recognized as a premier museum and research center, the Frick is known for its distinguished Old Master paintings and outstanding examples of European sculpture and decorative arts.', user: usertwo, price: 22, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-288-0700' })
frick.save!

barrio = Activity.new({name: 'El Museo del Barrio', address: '1230 5th Avenue, New York, NY 10029', description: 'New York’s leading Latino cultural institution, welcomes visitors of all backgrounds to discover the artistic landscape of Latino, Caribbean, and Latin American cultures.', user: usertwo, price: 9, duration: 3, available_spots: 125, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-831-7272' })
barrio.save!

neue = Activity.new({name: 'Neueu Galerie New York', address: '1048 5th Avenue, New York, NY 10028', description: 'Neue Galerie New York is a museum devoted to early twentieth-century German and Austrian art and design, displayed on two exhibition floors. The collection features art from Vienna circa 1900.', user: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-628-6200' })
neue.save!

puts "UserOne, UserTwo and activities have been created"
