require "open-uri"

User.destroy_all
Activity.destroy_all
Category.destroy_all

puts "users,activities and categories were deleted"

puts "creating users activities and categories"

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


userone = User.create ({email: 'xueying@cc.club', username: 'Xueying', password: '123456', provider: true})
userone.save!
usertwo = User.create ({email: 'lucas@cc.club', username: 'Lucas', password: 'lewagon', provider: true})
usertwo.save!
userthree = User.create ({email: 'daniel@cc.club', username: 'Dan', password: 'lewagon', provider: false})
usertwo.save!
userone = User.create ({email: 'francesca@cc.club', username: 'Franci', password: '123456', provider: true})
userone.save!

eldridge = Activity.new({name: 'Museum at Eldridge Street', address: '12 Eldridge Street New York, NY 10002', description: 'The Museum at Eldridge Street is housed in the Eldridge Street Synagogue, a magnificent National Historic Landmark that has been meticulously restored.', lng_description: 'The Museum at Eldridge Street is housed in the Eldridge Street Synagogue, a magnificent National Historic Landmark that has been meticulously restored. Opened in 1887, the synagogue is the first great house of worship built in America by Jewish immigrants from Eastern Europe. Today, it is the only remaining marker of the great wave of Jewish migration to the Lower East Side that is open to a broad public who wish to visit Jewish New York. Exhibits, tours, cultural events and educational programs tell the story of Jewish immigrant life, explore architecture and historic preservation, inspire reflection on cultural continuity, and foster collaboration and exchange between people of all faiths, heritages and interests.', provider: usertwo, price: 15, duration: 1, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-219-0302' })
fileOne = URI.open('https://aws-tiqets-cdn.imgix.net/images/content/c9a5bd95b90e4c6e8c8552ae7d7cd96b.jpg?auto=format&fit=crop&ixlib=python-3.2.1&q=25&s=13fe9cb167db03e4ee2a2a183a247086&w=375&h=250&dpr=2.625')
fileTwo = URI.open('https://live.staticflickr.com/1469/25031266725_3803165dd8_b.jpg')
fileThree = URI.open('https://imgs.6sqft.com/wp-content/uploads/2018/09/28162737/Museum-at-Eldridge-Street-6sqft-1-1024x966.jpg')
eldridge.banner_photo.attach(io: fileOne, filename: 'image1.jpg')
eldridge.photos.attach(io: fileTwo, filename: 'image2.jpg')
eldridge.photos.attach(io: fileThree, filename: 'image3.jpg')
eldridge.save!
eldridge.categories << freeCategory
eldridge.categories << childFriendlyCategory

eldridge.categories << childFriendlyCategory
eldridge.categories << sacredCategory
eldridge.categories << buildingCategory

puts 'eldridge created'

dyckman = Activity.new({name: 'Dyckman Farmhouse Museum Alliance', address: '4881 Broadway, New York, NY 10034', description: 'The Dyckman Farmhouse was home to the Dyckman family for almost a century. It opened as a museum in 1916 and continues to serve the community in a half-acre park.', lng_description: 'The founding father of our Dyckman family was Jan Dyckman, who arrived in New Amsterdam in the 1600s from Westphalia. By the time of the American Revolution, the Dyckman family homestead was located roughly near 210th Street and the East River and Jan’s grandson William had inherited Dyckman land from his father. During the British occupation of Manhattan in 1776-1783, William Dyckman and his family sought refuge in upstate New York. When the War ended, William returned to find the family home and orchards destroyed. It is believed that he immediately began building a new house, but chose a new location — directly on Kingsbridge Road (Broadway). When William died in 1787, the family initially advertised the property for sale but ultimately his son Jacobus took over the house and farm. However, the ad is excellent documentation of how much work the family and slaves had done to rebuild the farm in less than five years (see below for full text of the ad.) Jacobus moved into the farmhouse around 1793 and inherited a modest farmhouse that he would alter significantly over the next several decades. The makeup of the household also changed drastically over the years as family members died or moved away and household help transitioned from slave to free. Jacobus and his wife Hannah had eleven children, yet most of them were born before they moved to the house. Hannah died in 1814, a time when there was already a great deal of loss within the family. Between 1809 and 1822, Jacobus lost four sons, a grandson, a daughter and his wife.', provider: usertwo, price: 6, duration: 1, available_spots: 5, opening_hours: '10:00 am - 1:00 pm', contact_number: '212-304-9422' })
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

wyckoff = Activity.new({name: 'Wyckoff House Museum', address: '5816 Clarendon Road, Brooklyn, NY 11203', description: 'The Wyckoff House Museum cherishes its mission to build connections in our community through our educational and agricultural programs at New York City’s oldest building and the surrounding one-and-a-half acres of park.', lng_description: 'The Wyckoff House & Association, Inc., was first formed in 1937 when a large group of descendants of Pieter Claesen Wyckoff and Grietje Van Ness-Wyckoff gathered together to purchase and preserve their ancestral home, the Pieter Claesen Wyckoff House. In the face of potential demolition, the family joined forces with community activists to protect the house over the next few decades. In the 1960’s the Wyckoff House Foundation gained ownership of the property and donated it to the New York City Parks Department, with plans to renovate the building. In 1965 the house became the first structure in New York to be designated a historic landmark. After surviving a fire in the late 1970s, the house was finally restored in the early 1980s. Since 2001, the house has been opened regularly as a public museum, offering school programs, public events and celebrations, and community farmers markets. In the past several years, the museum has increased its community engagement efforts, doubling the audience and bringing visitors back again and again, with particular focus on engaging  local community members.', provider: usertwo, price: 5, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '718-629-5400' })
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

tenement = Activity.new({name: 'Tenement Museum', address: '103 Orchard Street, New York, NY 10002', description: 'The Lower East Side Tenement Museum, located at 97 and 103 Orchard Street in the Lower East Side neighborhood of Manhattan, New York City, is a National Historic Site.', lng_description: 'At a time when issues surrounding migrants, refugees, and immigration have taken center stage, the Lower East Side Tenement Museum is a potent reminder that, as a nation shaped by immigration, our brightest hope for the future lies in the lessons of the past. Our mission is to foster a society that embraces and values the role of immigration in the evolving American identity through guided tours; curriculum and programs for secondary and post-secondary educators; stories, primary sources and media shared on our website; and interactive online experiences such as Your Story, Our Story, podcasts and more. Founded in 1988 by historian Ruth Abram and social activist Anita Jacobsen, the Lower East Side Tenement Museum explores the uniquely American story of immigration and the rich, diverse landscape it continues to create. The Museum took root when Abram and Jacobsen discovered 97 Orchard Street — a dilapidated tenement building that had been shuttered for more than 50 years.', provider: usertwo, price: 25, duration: 1, available_spots: 10, opening_hours: '10:30 am - 5:00 pm', contact_number: '877-975-3786' })
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

morris = Activity.new({name: 'Morris Jumel Mansion', address: '65 Jumel Terrace  New York, NY 10032', description: 'As Manhattan’s oldest  surviving residence, the Morris-Jumel Mansion museum showcases American life by preserving, collecting, and interpreting history, culture, and the arts to engage and inspire its diverse audiences.', lng_description: 'Roger Morris, a British military officer who was serving as a member of the Executive Council of the Province of New York, built the house in 1765 for himself and his American-born wife, Mary Philipse Morris; they lived in it for ten years, from 1765 until 1775, when the American Revolution began. Roger Morris held the position of captain in the British army during the French war, while his wife, Mary Phillipse, was daughter to speaker of the assembly Frederick Philipse. She was often described as beautiful, fascinating, and accomplished. As British loyalists, Morris went to England at the start of the war, while his wife and family went to stay at the Philipse estate in Yonkers. Morris returned in 1777, after the city had been captured by the British, and became the Inspector of the Claims of Refugees until 1783, when he and his family left for England after the British defeat in the Revolution. Between September 14 and October 20, 1776, General George Washington used the mansion as his temporary headquarters after his army was forced to evacuate Brooklyn Heights following their loss to the British Army under the command of General William Howe in the Battle of Long Island. During his stay there from September 14 to October 20, 1776, Washington made note of his experience there. It is claimed without foundation by those with a romantic inclination that Washington not only selected the house because of its location but also because Mary Philipse had been a love interest for him twenty years before. The house is one of the major remaining landmarks of Battle of Harlem Heights, after which it became the headquarters of British Lieutenant General Sir Henry Clinton, and the Hessian commander Baron Wilhelm von Knyphausen.', provider: usertwo, price: 16, duration: 1, available_spots: 10, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-923-8008' })
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

weeksville = Activity.new({name: 'Weeksville Heritage Center', address: '158 Buffalo Avenue, Brooklyn, NY 11213', description: 'Weeksville Heritage Center is an historic site and cultural center in Central Brooklyn.', lng_description: 'Weeksville Heritage Center is an historic site and cultural center in Central Brooklyn that uses education, arts and a social justice lens to preserve, document and inspire engagement with the history of Weeksville, one of the largest free Black communities in pre-Civil War America, and the Historic Hunterfly Road Houses. Our vision is to be a leading authority and resource for the scholarship, exploration and dissemination of the history of Weeksville and other 19th-and early-20th century free Black communities, as well as the modern-day artistic, intellectual and social justice imperatives they exemplify and inspire.  Our work will illuminate a pivotal aspect of Black history; empower our visitors with tools, training and education; celebrate and center Black culture, community and creativity; and spark dialogue and collaborations between local residents, artists, academics and activists that advance us towards a more just and equitable world.', provider: usertwo, price: 10, duration: 2, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-756-5250' })
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

transit = Activity.new({name: 'New York Transit Museum', address: '99 Schemerhorn Street, Brooklyn, NY 11201', description: 'The Transit Museum is dedicated to telling and preserving the stories of mass transportation in New York City.', lng_description: 'On the platform level, two fully powered and operational subway tracks contain many historic examples of New York City subway and elevated railway equipment on permanent display. Preserved railcars, most of which can still be operated, date as far back as the predecessor companies that came before the New York City Transit Authority, such as the BMT and IRT private companies, and the city owned and operated IND. The platform bordering one of the two tracks is equipped with hinged bright yellow gap filler boards, to allow the narrower IRT railcars to be safely boarded from a platform which was built for the wider cars running on newer lines. A few specialized railwork vehicles formerly used for maintenance are also usually on view. In addition to the operational rolling stock, there is a large wheel truck and motor (bogie) on display on the platform itself, along with a series of informational panels showing the development of New York Citys rail transit systems. In addition, a fully functional underground signal tower control room is on view, a facility that was used to monitor the IND Fulton Street Line and IND Crosstown Line when the subway station was in active revenue service. The track diagram indicator lights and control levers are fully operational, and are still needed when the subway cars on display are replaced or moved; however, since the controls are live, the control panel is secured and locked, but visitors can still view it through a window and read explanatory signs.', provider: usertwo, price: 10, duration: 2, available_spots: 75, opening_hours: '11:00 am - 5:00 pm', contact_number: '718-694-1600' })
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

image = Activity.new({name: 'Museum of the the Moving Image', address: '36-01 35th Avenue, Astoria, NY 11106', description: 'Museum of the Moving Image is the countrys only museum dedicated to the art, history, technique, and technology of the moving image in all its forms. ', lng_description: 'Museum of the Moving Image advances the understanding, enjoyment, and appreciation of the art, history, technique, and technology of film, television, and digital media by presenting exhibitions, education programs, significant moving-image works, and interpretive programs, and collecting and preserving moving-image related artifacts. Museum of the Moving Image serves as a bridge to connect diverse communities to the moving image, in all its forms, with the goal of together building a more equitable and inclusive cultural future. We strive to be welcoming to everyone who passes through our doors, with programs, exhibitions, and a staff that reflect the diversity of our community. Our commitment to diversity, equity, and inclusion is informed by an anti-oppressive, intersectional, international, and community-centered approach to all that we do. A ubiquitous and powerful form of creative expression and communication, the moving image can serve to enliven, uplift, and build a deeper understanding of ourselves and one another.', provider: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '12:00 pm - 6:00 pm', contact_number: '718-784-0477' })
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

queens = Activity.new({name: 'Queens Museum', address: '4701 111th St, Queens, NY 11368', description: 'The Queens Museum is dedicated to presenting the highest quality visual arts and educational programming for people in the New York metropolitan area.', lng_description: 'The Queens Museum is dedicated to presenting the highest quality visual arts and educational programming for people in the New York metropolitan area, and particularly for the residents of Queens, a uniquely diverse, ethnic, cultural, and international community. The Museum fulfills its mission by designing and providing art exhibitions, public programs and educational experiences that promote the appreciation and enjoyment of art, support the creative efforts of artists, and enhance the quality of life through interpreting, collecting, and exhibiting art, architecture, and design. The Queens Museum presents artistic and educational programs and exhibitions that directly relate to the contemporary urban life of its constituents, while maintaining the highest standards of professional, intellectual, and ethical responsibility.', provider: userone, price: 0, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 5:00 pm', contact_number: '718-592-9700' })
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

noguchi = Activity.new({name: 'The Noguchi Museum', address: '9-01 33rd Road, Long Island City, NY 11106', description: 'The Noguchi Museum was founded and designed by internationally renowned American artist Isamu Noguchi (1904–1988) for the display of what he considered to be representative examples of his life’s work.', lng_description: 'The Noguchi Museum was founded and designed by internationally renowned American artist Isamu Noguchi (1904–1988) for the display of what he considered to be representative examples of his life’s work. In 1980, Noguchi renamed his Akari Foundation as the Isamu Noguchi Foundation in anticipation of the Museum’s creation. The Isamu Noguchi Garden Museum officially opened to the public on May 11, 1985. Learn more about the making of the Museum here. In 2004, the private Isamu Noguchi Foundation and The Isamu Noguchi Garden Museum, which it operated, were consolidated into a single entity. Chartered as The Isamu Noguchi Foundation and Garden Museum, The Noguchi Museum is a 501(c)(3) public charity; and accredited by the American Alliance of Museums (AAM).', provider: userone, price: 10, duration: 2, available_spots: 50, opening_hours: '11:00 am - 6:00 pm', contact_number: '718-204-7088' })
fileOne = URI.open('https://champ-magazine.com/wp-content/uploads/2019/08/Noguchi_1-1280x0-c-default.jpg')
fileTwo = URI.open('https://www.noguchi.org/wp-content/uploads/2019/09/The-Noguchi-Museum-New-York-Area-3-photo-Nicholas-Knight-2400-1600x900.jpg')
fileThree = URI.open('https://images.e-flux-systems.com/215792_48b5d5534f78eeed68598cb84b6f2403.jpg,1440')
noguchi.banner_photo.attach(io: fileOne, filename: 'nes.png', content_type: 'image/png')
noguchi.photos.attach(io: fileTwo, filename: 'nes.png', content_type: 'image/png')
noguchi.photos.attach(io: fileThree, filename: 'nes.png', content_type: 'image/png')
noguchi.save!

noguchi.categories << artCategory
noguchi.categories << museumCategory

puts 'noguchi created'

rubin = Activity.new({name: 'Rubin Museum of Art', address: '150 West 17th Street, New York, NY 10011', description: 'The Rubin Museum of Art is a dynamic environment that stimulates learning, promotes understanding, and inspires personal connections to the ideas, cultures, and art of Himalayan regions.', lng_description: 'The museum originated from a private collection of Himalayan art which Donald and Shelley Rubin had been assembling since 1974.[2] In 1998, the Rubins paid $22 million for the building that had been occupied by Barneys New York, a designer fashion department store that had filed for bankruptcy.[3] The building was remodeled as a museum by preservation architects Beyer Blinder Belle. The original six-story spiral staircase was left intact to become the center of the 25,000 square feet (2,300 square meters) of exhibition space. The museum opened on October 2, 2004,[4] and displays more than 1,000 objects including paintings, sculpture, and textiles, as well as ritual objects from the 2nd to the 20th centuries. The new facade on 17th Street and the five floors of galleries were influenced by Tibetan art, and were conceived by New York-based museum architects Celia Imrey and Tim Culbert. Its graphic identity was conceived by graphic designer Milton Glaser.', provider: userone, price: 19, duration: 2, available_spots: 25, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
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

county = Activity.new({name: 'Queens County Farm Museum', address: '73-50 Little Neck Parkway, Queens, NY 11004', description: 'Queens Farm is one of the longest continually farmed sites in New York State, dating back to 1697.  It showcases how a colonial farmstead evolved into a bustling truck farm serving the needs of a growing city.', lng_description: 'The Queens County Farm Museum, also known as Queens Farm, is a historic farm located on 47 acres (190,000 m2) of the neighborhoods of Floral Park and Glen Oaks in Queens, New York City. The farm occupies the citys largest remaining tract of undisturbed farmland (in operation since 1697), and is still a working farm today. The site features restored farm buildings from three different centuries, a greenhouse, planting fields, livestock, and various examples of vintage farm equipment. Queens Farm practices sustainable agriculture and has a four-season growing program. The museum includes the Adriance Farmhouse, a New York City Landmark on the National Register of Historic Places. Free guided tours of the farmhouse are offered to the public Saturdays and Sundays year-round. Hayrides are offered on weekends from April through October. An on-site seasonal farmstand featuring Queens Farm vegetables, herbs, and flowers takes place every Wednesday through Sunday from May through October.', provider: userone, price: 0, duration: 3, available_spots: 30, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
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

onderdonck = Activity.new({name: 'The Vander Ende - Onderdonk House', address: '1820 Flushing Avenue Ridgewood, NY', description: 'The Vander Ende-Onderdonk House, located in Ridgewood on the border of Queens and Brooklyn, is the oldest Dutch Colonial stone house in New York City.', lng_description: 'The Vander Ende–Onderdonk House (Van Anda House; Van Enden House) is a historic house at 18-20 Flushing Avenue in Ridgewood, Queens. It is the oldest Dutch Colonial stone house in New York City. The original house on the site was built in 1661 by Hendrick Barents Smidt, from land that was granted to him by Peter Stuyvesant.  Another part of the structure, expanding from the original house, was built in 1709 by Paulus Vander Ende. The house was mentioned in a 1769 survey that established the boundary between Kings and Queens counties and may have been largely constructed around this time. The Onderdonk family acquired the property in 1821. In 1975 the house suffered a serious fire that destroyed many of its wooden elements. It was rebuilt in the early 1980s. The house was added to the National Register of Historic Places in 1977. It was designated a landmark by the New York City Landmarks Preservation Commission in 1995.', provider: usertwo, price: 10, duration: 1, available_spots: 20, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-620-5000' })
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

psone = Activity.new({name: 'MoMA PS1', address: '25-22 Jackson Avenue, Long Island City, NY 11101', description: 'At The Museum of Modern Art and MoMA PS1, we’re committed to sharing the most thought-provoking modern and contemporary art, and hope you will join us in exploring the art, ideas, and issues of our time.', lng_description: 'MoMA PS1 is one of the largest art institutions in the United States dedicated solely to contemporary art. It is located in the Long Island City neighborhood in the borough of Queens, New York City. In addition to its exhibitions, the institution organizes the Sunday Sessions performance series, the Warm Up summer music series, and the Young Architects Program with the Museum of Modern Art. MoMA PS1 has been affiliated with the Museum of Modern Art since January 2000 and, as of 2013, attracts about 200,000 visitors a year.', provider: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '12:00 pm - 8:00 pm', contact_number: '212-708-9400' })
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

hamilton = Activity.new({name: 'Hamilton Grange National Memorial', address: '414 West 141st Street, New York, NY 10031', description: 'The Grange is believed to be the only home Alexander Hamilton ever owned. Over the years, it has been an investment for a real estate speculator, a foreclosed property, a chapel, and a National Memorial. The building has been moved twice.', lng_description: 'Alexander Hamilton was born and raised in the West Indies and came to New York in 1772 at age 17 to study at Kings College (now Columbia University). During his career, Hamilton was a military officer, lawyer, member of the United States Constitutional Convention, American political philosopher, war hero, initiator and author of the majority of the pivotal and influential The Federalist Papers, and the first United States Secretary of the Treasury. Hamilton commissioned architect John McComb Jr. to design a country home on Hamiltons 32 acres (13 ha) estate in upper Manhattan. The two-story frame Federal style house was completed in 1802, just two years before Hamiltons death resulting from his duel with Aaron Burr on July 11, 1804. The estate was named The Grange after Hamiltons grandfathers own holdings in Scotland. The Grange was the only home Hamilton ever owned, and he traveled there by stagecoach from his law office several times a week, and fussed over the landscaping, including a circle of thirteen sweet gum trees symbolizing the thirteen original states. The house remained in his family for 30 years after his death. The Grange might have also been Hamiltons rivalrous answer to Thomas Jeffersons Monticello.', provider: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '10:00 am - 4:00 pm', contact_number: '646-548-2310' })
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

merchant = Activity.new({name: 'Merchants House Museum', address: '29 East 4th Street, New York, NY 10003', description: 'The Merchants House Museum, known formerly as the Old Merchants House and as the Seabury Tredwell House, is the only nineteenth-century family home in New York City preserved intact.', lng_description: 'In addition to its magnificent period rooms, the museum presents many performances, presentations, lectures, exhibits and special events throughout the year. Ongoing research and state-of-the-art documentation and conservation techniques assure that more is constantly being learned about the house, its furnishings and outstanding textile collections, and what life was really like for a 19th-century New York family. In 1991, in a joint effort with the Greenwich Village Society for Historic Preservation, the Merchants House Museum launched the educational program, Greenwich Village: History and Historic Preservation. The program was designed to teach students local history, architectural vocabulary, and the fundamentals of historic preservation. The program ran through the end of the 1990s at the museum, but eventually shifted its focus to the West Village, where it continues to reach out to students in the five boroughs.', provider: usertwo, price: 15, duration: 1, available_spots: 10, opening_hours: '1:00 pm - 4:00 pm', contact_number: '212-777-1089' })
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

roosevelt = Activity.new({name: 'Theodore Roosevelt Birthplace', address: '28 East 20th Street, New York, NY 10003', description: 'The boyhood home of the first U.S. president to be born in New York City. Raised in a townhouse at 28 E. 20th St., Theodore Roosevelt would grow up to be the 26th US President.', lng_description: 'The house that originally stood on the site was built in 1848 and was bought by the Roosevelts in 1854. Theodore Roosevelt was born there on October 27, 1858, and lived in the house with his family until 1872, when the neighborhood began to become more commercial and the family moved uptown to 57th Street. The original building was demolished in 1916 to make way for retail space, but upon the death of Roosevelt in 1919 the lot was purchased and the house rebuilt by the Womens Roosevelt Memorial Association, which eventually merged with the Roosevelt Memorial Association in 1953 to form the Theodore Roosevelt Association. Noted female American architect Theodate Pope Riddle was given the task of reconstructing a replica of the house, as well as designing the museum, situated next door, that serves to complete the site. The row house next door at number 26, which was a twin to the Roosevelts, was used as a model, and some architectural elements from it were incorporated into the replica. The twin house was demolished to make space for the museum. The restoration recreates the house as it was in 1865. The house was rededicated in 1923 and was subsequently refurbished with many furnishings from the original house by the Presidents widow, Edith, and his two sisters. The widow and sisters also supplied information about the interiors appearance during Roosevelts residency.', provider: usertwo, price: 0, duration: 2, available_spots: 15, opening_hours: '10:00 am - 5:00 pm', contact_number: '212-260-1616' })
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

bkmuseum = Activity.new({name: 'Brooklyn Museum', address: '200 Eastern Parkway, Brooklyn, NY 11238', description: 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn', lng_description: 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet (52,000 m2), the museum is New York Citys third largest in physical size and holds an art collection with roughly 1.5 million works. Located near the Prospect Heights, Crown Heights, Flatbush, and Park Slope neighborhoods of Brooklyn and founded in 1895, the Beaux-Arts building, designed by McKim, Mead and White, was planned to be the largest art museum in the world. The museum initially struggled to maintain its building and collection, only to be revitalized in the late 20th century, thanks to major renovations. Significant areas of the collection include antiquities, specifically their collection of Egyptian antiquities spanning over 3,000 years. European, African, Oceanic, and Japanese art make for notable antiquities collections as well. American art is heavily represented, starting at the Colonial period. Artists represented in the collection include Mark Rothko, Edward Hopper, Norman Rockwell, Winslow Homer, Edgar Degas, Georgia OKeeffe, and Max Weber. The museum also has a Memorial Sculpture Garden which features salvaged architectural elements from throughout New York City.', provider: usertwo, price: 16, duration: 3, available_spots: 200, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-638-5000' })
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

grant = Activity.new({name: 'General Grant National Memorial', address: 'West 122nd Street & Riverside Drive, New York, NY 10027', description: 'The final resting place of President Ulysses S. Grant and his wife, Julia. The building is the largest mausoleum in North America.', lng_description: 'Grants Tomb, officially the General Grant National Memorial, is the final resting place of Ulysses S. Grant, 18th President of the United States, and his wife, Julia Grant. It is a classical domed mausoleum, located in the Morningside Heights neighborhood of Upper Manhattan in New York City. The structure is located in the middle of Riverside Drive at 122nd Street, across from Riverside Church to the southeast and Riverside Park to the west. Upon Grants death in 1885, his widow declared that he had wished to be buried in New York, and a new committee, the Grant Monument Association, appealed for funds. Progress was slow at first, since many believed that the tomb should be in Washington, D.C., and because there was no architectural design to show. Eventually they selected a proposal by John Hemenway Duncan for a tomb of unmistakably military character, modeled after the Mausoleum of Halicarnassus, with twin sarcophagi based on Napoleon’s tomb at Les Invalides. The tomb was completed in 1897, and has been under the management of the National Park Service since 1958. After a period of neglect, it has been restored and rededicated', provider: usertwo, price: 0, duration: 2, available_spots: 50, opening_hours: '9:00 am - 5:00 pm', contact_number: '646-670-7251' })
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

cathedral = Activity.new({name: 'Cathedral of St. John the Divine', address: '1047 Amsterdam Avenue, New York, NY 10025', description: 'The Cathedral Church of Saint John the Divine, the mother church of the Episcopal Diocese of New York and the Seat of its Bishop, is chartered as a house of prayer for all people and a unifying center of intellectual light and leadership', lng_description: 'The Cathedral of St. John the Divine (sometimes referred to as St. Johns and also nicknamed St. John the Unfinished) is the cathedral of the Episcopal Diocese of New York. It is at 1047 Amsterdam Avenue in the Morningside Heights neighborhood of Manhattan in New York City, between West 110th Street (also known as Cathedral Parkway) and West 113th Street. The cathedral is an unfinished building, with only two-thirds of the proposed building completed, due to several major stylistic changes and work interruptions. The original design, in the Byzantine Revival and Romanesque Revival styles, began construction in 1892. After the opening of the crossing in 1909, the overall plan was changed to a Gothic Revival design. The completion of the nave was delayed until 1941 due to various funding shortfalls, and little progress has occurred since then, except for an addition to the tower at the naves southwest corner. After a large fire damaged part of the cathedral in 2001, it was renovated and rededicated in 2008. The towers above the western facade, as well as the southern transept and a proposed steeple above the crossing, have not been completed.', provider: usertwo, price: 5, duration: 2, available_spots: 200, opening_hours: '9:30 am - 5:00 pm', contact_number: '212-316-7540' })
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

seaport = Activity.new({name: 'South Street Seaport Museum', address: '12 Fulton Street, New York, NY 10038', description: 'The South Street Seaport Museum preserves and interprets the ​origins and growth of New York City as a world port, a place where goods, labor, and cultures are exchanged through work, commerce, and the interaction of diverse communities.', lng_description: 'The South Street Seaport Museum was founded in 1967 by Peter and Norma Stanford. When originally opened as a museum, the focus of the Seaport Museum conservation was to be an educational historic site, with shops mostly operating as reproductions of working environments found during the Seaports heyday. In 1982, redevelopment began to turn the museum into a greater tourist attraction via development of modern shopping areas. The project was undertaken by the prominent developer James Rouse and modeled on the concept of a festival marketplace, a leading revitalization strategy throughout the 1970s.[23] On the other side of Fulton Street from Schermerhorn Row, the main Fulton Fish Market building, which had become a large plain garage-type structure, was rebuilt as an upscale shopping mall. Pier 17s old platforms were demolished and a new glass shopping pavilion raised in its place, which opened in August 1983.', provider: usertwo, price: 20, duration: 2, available_spots: 50, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-748-8600' })
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

burial = Activity.new({name: 'African Burial Ground National Monument', address: '290 Broadway, New York, NY 10007', description: 'African Burial Ground is the oldest and largest known excavated burial ground in North America for both free and enslaved Africans. It protects the historic role slavery played in building New York.', lng_description: 'African Burial Ground National Monument is a monument at Duane Street and African Burial Ground Way (Elk Street) in the Civic Center section of Lower Manhattan, New York City. Its main building is the Ted Weiss Federal Building at 290 Broadway. The site contains the remains of more than 419 Africans buried during the late 17th and 18th centuries in a portion of what was the largest colonial-era cemetery for people of African descent, some free, most enslaved. Historians estimate there may have been as many as 10,000–20,000 burials in what was called the Negroes Burial Ground in the 1700s. The five to six acre sites excavation and study was called the most important historic urban archaeological project in the United States. The Burial Ground site is New Yorks earliest known African-American cemetery; studies show an estimated 15,000 African American people were buried here.', provider: usertwo, price: 0, duration: 2, available_spots: 25, opening_hours: '10:00 am - 4:00 pm', contact_number: '212-637-2019' })
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

greenwood = Activity.new({name: 'Green-Wood Cemetery', address: '500 25th Street, Brooklyn, NY 11232', description: 'Green-Wood is a living cemetery that brings people closer to the world as it is and was, by memorializing the dead and bringing to life the art, history, and natural beauty of New York City.', lng_description: 'Green-Wood Cemetery is a 478-acre (193 ha) cemetery in the western portion of Brooklyn, New York City. The cemetery is located between South Slope/Greenwood Heights, Park Slope, Windsor Terrace, Borough Park, Kensington, and Sunset Park, and lies several blocks southwest of Prospect Park. It is generally bounded by 20th Street to the northeast, Fifth Avenue to the northwest, 36th and 37th Streets to the southwest, Fort Hamilton Parkway to the south, and McDonald Avenue to the east. Green-Wood Cemetery was founded in 1838 as a rural cemetery, in a time of rapid urbanization when churchyards in New York City were becoming overcrowded. Described as Brooklyns first public park by default long before Prospect Park was created, Green-Wood Cemetery was so popular that it inspired a competition to design Central Park in Manhattan, as well as Prospect Park nearby.', provider: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '718-210-3080' })
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

richmond = Activity.new({name: 'Historic Richmond Town', address: '441 Clarke Avenue, Staten Island, NY 10306', description: 'Historic Richmond Town is a remarkable living-history village and museum complex that evokes 300 years  of history, arts and culture on Staten Island.', lng_description: 'Historic Richmond Town is an authentic town and farm museum complex in the neighborhood of Richmondtown, Staten Island, in New York City. It is located near the geographical center of the island, at the junction of Richmond Road and Arthur Kill Road. Staten Island Historical Society and Historic Richmond Town are two different names for the same organization, reflecting its long history and evolution. The original settlement of Richmond Town was known as not trustworthy in the 1690s due to an abundance of oyster shells. The town was later named Richmond Town in the early 18th century when it was formerly a county seat and commercial center, having contained the former courthouse of Richmond County, and is coterminous with the borough of Staten Island. People who lived in Richmond Town were mostly of Dutch, English, or French descent, and the most common jobs were those of blacksmiths, shoemakers, and other craftsman types. British troops were stationed in Richmond Town during the American Revolution.', provider: usertwo, price: 10, duration: 4, available_spots: 100, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-351-1611' })
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

snug = Activity.new({name: 'Sailors Snug Harbor', address: '1000 Richmond Terrace, Staten Island, NY 10301', description: 'Sailors Snug Harbor, also known as Sailors Snug Harbor and informally as Snug Harbor, is a collection of architecturally significant 19th-century buildings on Staten Island, New York City.', lng_description: 'Sailors Snug Harbor, also known as Sailors Snug Harbor and informally as Snug Harbor, is a collection of architecturally significant 19th-century buildings on Staten Island, New York City. The buildings are set in an 83-acre (34 ha) park along the Kill Van Kull in New Brighton, on the North Shore of Staten Island. Some of the buildings and the grounds are used by arts organizations under the umbrella of the Snug Harbor Cultural Center and Botanical Garden. Sailors Snug Harbor was founded as a retirement home for sailors after Captain Robert Richard Randall bequeathed funds for that purpose upon his 1801 death. Snug Harbor opened in 1833 as a sailors retirement home located within what is now Building C, and additional structures were built on the grounds in later years. The buildings became a cultural center after the sailors home moved away in 1976. The grounds and buildings are operated by Snug Harbor Cultural Center and Botanical Garden, a nonprofit, Smithsonian-affiliated organization.', provider: usertwo, price: 0, duration: 3, available_spots: 20, opening_hours: '10:00 am - 5:00 pm', contact_number: '718-425-3504' })
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

morgan = Activity.new({name: 'The Morgan Library & Museum', address: '225 Madison Avenue, New York, NY 10016', description: 'The Morgan Library & Museum, formerly the Pierpont Morgan Library, is a museum and research library in the Murray Hill neighborhood of Manhattan in New York City.', lng_description: 'The Morgan Library & Museum, formerly the Pierpont Morgan Library, is a museum and research library in the Murray Hill neighborhood of Manhattan in New York City. It is situated at 225 Madison Avenue, between 36th Street to the south and 37th Street to the north. The Morgan Library & Museum is composed of several structures. The main building was designed by Charles McKim of the firm of McKim, Mead and White, with an annex designed by Benjamin Wistar Morris. A 19th-century Italianate brownstone house at 231 Madison Avenue, built by Isaac Newton Phelps, is also part of the grounds. The museum and library also contains a glass entrance building designed by Renzo Piano and Beyer Blinder Belle. The main building and its interior is a New York City designated landmark and a National Historic Landmark, while the house at 231 Madison Avenue is a New York City landmark.', provider: usertwo, price: 22, duration: 4, available_spots: 50, opening_hours: '10:30 am - 5:00 pm', contact_number: '212-685-0008' })
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

barge = Activity.new({name: 'Waterfront Barge Museum', address: '290 Conover Street, Brooklyn, NY 11231', description: 'The Museum offers free Open Boat Tours every Thursday 4-8pm and Saturday 1-5pm. In addition, we are open year-round for school and group tours by appointment and feature many performances, art exhibits, and other special events throughout the year.', lng_description: 'The Waterfront Museum was formerly Lehigh Valley Barge No. 79, a Lehigh Valley Railroad barge that moved goods across the Hudson River. It dates to 1914 and is believed to be the sole all-wooden vessel built between 1860 and 1960 to remain accessible and afloat. It is currently docked and operated as a museum at the foot of Conover Street in Brooklyns Red Hook neighborhood where it provides a range of educational and entertainment programming. It was also the location for the US premiere of Arthur Millers The Hook. The museum was established in 1985 following the restoration project by founder and juggler David Sharps. He subsequently relocated the barge to Red Hook where it has remained since 1994. He continued to serve as President through the museums first twenty-five years of operation.', provider: usertwo, price: 0, duration: 1, available_spots: 5, opening_hours: '10:00 am - 4:00 pm', contact_number: '718-624-4719' })
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

woolworth = Activity.new({name: 'The Woolworth Building', address: '233 Broadway, New York, NY 10003', description: 'The Woolworth Building transformed New York City’s skyline and remains one of the most famous skyscrapers in the country. It is a Gothic marvel designed by architect Cass Gilbert for millionaire five-and-dime storeowner Frank W. Woolworth.', lng_description: 'The Woolworth Building is an early American skyscraper designed by architect Cass Gilbert located at 233 Broadway in Manhattan, New York City. It was the tallest building in the world from 1913 to 1930, with a height of 792 feet (241 m). More than a century after its construction, it remains one of the 100 tallest buildings in the United States. The Woolworth Building is located in Manhattans Tribeca neighborhood, bounded by Broadway and City Hall Park to its east, Park Place to its north, and Barclay Street to its south. It consists of a 30-story base topped by a 30-story tower. Its facade is mostly decorated with terracotta, though the lower portions are limestone, and it features thousands of windows. The ornate lobby contains various sculptures, mosaics, and architectural touches. The structure was designed with several amenities and attractions, including a now-closed observatory on the 57th floor and a private swimming pool in the basement.', provider: usertwo, price: 0, duration: 2, available_spots: 10, opening_hours: '11:00 am - 3:00 pm', contact_number: '203-966-9663' })
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

stone = Activity.new({name: 'The Old Stone House', address: '336 3rd Street Brooklyn, NY 11215', description: 'Originally built by Claes Vechte in 1699, this reconstructed house, with its solid stone walls and high brick gables, is a landmark in American military and sports history.', lng_description: 'The Old Stone House is a house located in the Park Slope neighborhood of Brooklyn, New York City. The Old Stone House is situated within the J. J. Byrne Playground, at Washington Park, on Third Street between Fourth and Fifth Avenues. Gowanus Creek once ran nearby, but today the southeastern branch of the Gowanus Canal ends 1,300 feet (400 m) west of the house. The current structure is a 1933 reconstruction, using some original materials, of the Vechte–Cortelyou House, which was destroyed in 1897. The original house was an important part of the 1776 Battle of Long Island during the American Revolutionary War. At one time, the Old Stone House was the clubhouse of the Brooklyn Superbas, who later became the Brooklyn Dodgers. The house was listed on the National Register of Historic Places in 2012.', provider: usertwo, price: 3, duration: 1, available_spots: 15, opening_hours: '12:00 pm - 3:00 pm', contact_number: '718-768-3195' })
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

poe = Activity.new({name: 'Edgar Allen Poe Cottage', address: '2640 Grand Concourse, Bronx, NY 10458', description: 'The home of Edgar Allen Poe for a brief period. He lived in the cottage with his wife Virginia. Virginia died in the cottage and Poe himself died two years later in Baltimore in 1847.', lng_description: 'In 1962, Poes Cottage was designated a landmark in The Bronx, and in 1966 it was recognized by the New York City Landmarks Preservation Commission. In 1974 vandals struck, as in the past, leading to further criticism of the Cottages management and preservation efforts. Vandalism continued to occur over the next few years, though it tapered off by the end of the following decade, becoming less of a risk due in part to the increased use of live-in caretakers. In the late 1990s, the cottage was under the care of a graduate student in philology who lived in the basement. In 2007, the proposed Visitors Center for the Cottage and Bronx Historical Society in Poe Park was honored by the New York City Art Commissions 2007 Design Awards', provider: usertwo, price: 10, duration: 1, available_spots: 5, opening_hours: '10:00 am - 3:00 pm', contact_number: '718-881-8900' })
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

cooper = Activity.new({name: 'Cooper Hewitt Design Museum', address: '2 East 91st Street New York, NY 10128', description: 'Cooper Hewitt is the only museum in the United States devoted exclusively to historical and contemporary design, and is the steward of one of the most diverse and comprehensive design collections in existence', lng_description: 'The Cooper Hewitt is located in the Andrew Carnegie Mansion. The Georgian style mansion was built over the course of the years 1899 to 1902 and has 64 rooms. The home served as not only the home for Andrew Carnegie, his wife, and daughter, but also as his office for his philanthropic work after his retirement. The mansion was designed by Babb, Cook & Willard. It was the first private residence in the United States to have a structural steel frame. It was the first home in New York to have an Otis elevator. The elevator is now in the collection of the National Museum of American History. The home also had central heating and an early form of air-conditioning. The property also has a large private garden. In 1974 it was added to the National Register of Historic Places. The conservatory, which is made of Tiffany glass, was renovated in 1975. In 1995, the museum closed for a year for a $20 million renovation to connect the three buildings on the property, improve accessibility, and build a design study center. Funds for the 1995 renovation project included $13 million from the Smithsonian Institution and a $2 million donation by Agnes Bourne, an interior designer.', provider: usertwo, price: 0, duration: 3, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-849-8400' })
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

mcny = Activity.new({name: 'Museum of the City of New York', address: '1220 5th Avenue, New York, NY 10029', description: 'The Museum of the City of New York fosters understanding of the distinctive nature of urban life in the world’s most influential metropolis. It engages visitors by celebrating, documenting, and interpreting the city’s past, present, and future.', lng_description: 'The Museum of the City of New York (MCNY) is a history and art museum in Manhattan, New York City, New York. It was founded by Henry Collins Brown, in 1923 to preserve and present the history of New York City, and its people. It is located at 1220–1227 Fifth Avenue between East 103rd to 104th Streets, across from Central Park on Manhattans Upper East Side, at the northern end of the Museum Mile section of Fifth Avenue. The red brick with marble trim museum was built in 1929–30 and was designed by Joseph H. Freedlander in the neo-Georgian style, with statues of Alexander Hamilton and DeWitt Clinton by sculptor Adolph Alexander Weinman facing Central Park from niches in the facade. The museum is a private non-profit organization which receives government support as a member of New York Citys Cultural Institutions Group, commonly known as CIGs. Its other sources of income are endowments, admission fees, and contributions. The museum is hosting the New York At Its Core permanent exhibition, the first-ever museum presentation of New York Citys full history.', provider: usertwo, price: 20, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-534-1672' })
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

frick = Activity.new({name: 'The Frick Collection', address: '1 East 70th Street, New York, NY 10021', description: 'Internationally recognized as a premier museum and research center, the Frick is known for its distinguished Old Master paintings and outstanding examples of European sculpture and decorative arts.', lng_description: 'The Frick is one of the preeminent small art museums in the United States, with a high-quality collection of old master paintings and fine furniture housed in nineteen galleries of varying size within the former residence. Frick had intended the mansion to become a museum eventually, and a few of the paintings are still arranged according to Fricks design. Besides its permanent collection, the Frick has always organized small, focused temporary exhibitions.  The collection features some of the best-known paintings by major European artists as well as numerous works of sculpture and porcelain. It also has 18th-century French furniture, Limoges enamel, and Oriental rugs. After Fricks death, his daughter, Helen Clay Frick, and the Board of Trustees expanded the collection: nearly half of the collections artworks have been acquired since 1919. Although the museum cannot lend the works of art that belonged to Frick, as stipulated in his will, The Frick Collection does lend artworks and objects acquired since his death. Included in the collection are Jean-Honoré Fragonards masterpiece The Progress of Love, three paintings by Johannes Vermeer including Mistress and Maid, two paintings by Jacob van Ruisdael including Quay at Amsterdam, and Piero della Francescas St. John the Evangelist.', provider: usertwo, price: 22, duration: 2, available_spots: 100, opening_hours: '10:00 am - 6:00 pm', contact_number: '212-288-0700' })
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

barrio = Activity.new({name: 'El Museo del Barrio', address: '1230 5th Avenue, New York, NY 10029', description: 'New York’s leading Latino cultural institution, welcomes visitors of all backgrounds to discover the artistic landscape of Latino, Caribbean, and Latin American cultures.', lng_description: 'The museum features an extensive permanent collection of over 6,500 pieces, and it encompasses more than 800 years of Puerto Rican, Latin American, Caribbean, and Latino art, includes pre-Columbian Taíno artifacts, traditional arts (such as Puerto Rican Santos de palo and Vejigante masks), twentieth-century drawings, paintings, sculptures and installations, as well as prints, photography, documentary films, and video. There are often temporary exhibits on Puerto Rican and Latino modern art. The museum also sponsors numerous festivals and educational programs throughout the year including the annual Three Kings Day parade. Due to a lack of space prior to their 2009-2010 expansion, the museum began to place some of their permanent collection online. This also served as a means of audience development. Seeking to increase their audience and reach new audiences, El Museo has partnered with a number of organizations for joint exhibits including Nueva York (New York Historical Society) and Caribbean Crossroads (Queens Museum of Art and the Studio Museum in Harlem). Also, the museum is currently working on building its permanent collection by developing their holdings on Post-War art, adding more Modernist and Contemporary works, and fostering the strengths of graphics and Taíno holdings.', provider: usertwo, price: 9, duration: 3, available_spots: 125, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-831-7272' })
fileOne = URI.open('https://repeatingislands.files.wordpress.com/2009/09/el-museo-2.jpg')
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

neue = Activity.new({name: 'Neue Galerie New York', address: '1048 5th Avenue, New York, NY 10028', description: 'Neue Galerie New York is a museum devoted to early twentieth-century German and Austrian art and design, displayed on two exhibition floors. The collection features art from Vienna circa 1900.', lng_description: 'The collection of the Neue Galerie is divided into two sections. The second floor of the museum houses works of fine art and decorative art from early twentieth-century Austria, including paintings by Gustav Klimt, Oskar Kokoschka, and Egon Schiele and decorative objects by the artisans of the Wiener Werkstaette and their contemporaries. The third floor exhibits various German works from the same era, including art movements such as Der Blaue Reiter (The Blue Rider), Die Brücke (The Bridge), and the Bauhaus. Featured artists on this floor include Wassily Kandinsky, Paul Klee, Ernst Ludwig Kirchner, Lyonel Feininger, Otto Dix, and George Grosz. In 2006, Lauder purchased Klimts painting Portrait of Adele Bloch-Bauer I from Maria Altmann on behalf of the Neue Galerie. Citing a confidentiality agreement, Lauder would only confirm that the purchase price was more than the last record price of US$104.2 million US for Picassos 1905 Boy With a Pipe. The press reported the price for the Klimt at US$135 million, which would make it at that time the most expensive painting ever sold. It has been on display at the museum since July 2006.', provider: usertwo, price: 25, duration: 3, available_spots: 100, opening_hours: '11:00 am - 5:00 pm', contact_number: '212-628-6200' })
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
