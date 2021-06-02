# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

image = Activity.new({name: 'Museum of the the Moving Image', address: '36-01 35 Avenue, Astoria, NY 11106', description: 'Museum of the Moving Image is the countrys only museum dedicated to the art, history, technique, and technology of the moving image in all its forms. ', user: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '12:00 pm - 6:00 pm', contact_number: '718-784-0477' })
image.save!

queens = Activity.new({name: 'Queens Museum', address: 'New York City Building, Flushing Meadows Corona Park Queens, NY 11368', description: 'The Queens Museum is dedicated to presenting the highest quality visual arts and educational programming for people in the New York metropolitan area.', user: userone, price: 0, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 5:00 pm', contact_number: '718-592-9700' })
queens.save!

naguchi = Activity.new({name: 'The Naguchi Museum', address: '9-01 33rd Road, Long Island City, NY 11106', description: 'The Noguchi Museum was founded and designed by internationally renowned American artist Isamu Noguchi (1904–1988) for the display of what he considered to be representative examples of his life’s work.', user: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '11:00 am - 6:00 pm', contact_number: '718-204-7088' })
naguchi.save!

rubin = Activity.new({name: 'Rubin Museum of Art', address: '150 West 17th Street, New York, NY 1001', description: 'The Rubin Museum of Art is a dynamic environment that stimulates learning, promotes understanding, and inspires personal connections to the ideas, cultures, and art of Himalayan regions.', user: userone, price: 19, duration: 2, available_spots: 25, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
rubin.save!

county = Activity.new({name: 'Queens County Farm Museum', address: '73-50 Little Neck Parkway, Queens, NY 11004', description: 'Queens Farm is one of the longest continually farmed sites in New York State, dating back to 1697.  It showcases how a colonial farmstead evolved into a bustling truck farm serving the needs of a growing city.', user: userone, price: 0, duration: 3, available_spots: 30, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
county.save!

onderdonck = Activity.new({name: 'The Vander Ende - Onderdonk House', address: '1820 Flushing Avenue Ridgewood, NY', description: 'The Vander Ende-Onderdonk House, located in Ridgewood on the border of Queens and Brooklyn, is the oldest Dutch Colonial stone house in New York City.', user: usertwo, price: 10, duration: 1, available_spots: 20, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
onderdonck.save!

puts "UserOne, UserTwo and activities have been created"
