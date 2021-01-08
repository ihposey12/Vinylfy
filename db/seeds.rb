# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserRecord.destroy_all
UserGenre.destroy_all
User.destroy_all
Genre.destroy_all
Record.destroy_all
Review.destroy_all

u1 = User.create(name: 'Juan', username: 'JC', password: 'testing123')
u2 = User.create(name: 'Jeremy', username: 'JR', password: 'testing123')
u3 = User.create(name: 'Hunter', username: 'HP', password: 'testing123')
u4 = User.create(name: 'Bobby', username: 'bobbymcgee12', password: 'testing123')
u5 = User.create(name: 'Jerry', username: 'jg72', password: 'testing123')
u6 = User.create(name: 'Nick', username: 'nygiants12', password: 'testing123')
u7 = User.create(name: 'Dillon', username: 'rolltide15', password: 'testing123')
u8 = User.create(name: 'Nikki', username: 'slc4', password: 'testing123')
u9 = User.create(name: 'John', username: 'harpua123', password: 'testing123')
u10 = User.create(name: 'Mick', username: 'mickjag7', password: 'testing123')

pop = Genre.create(name: 'Pop')
rock = Genre.create(name: 'Rock')
country = Genre.create(name: 'Country')
rap = Genre.create(name: 'Rap')
metal = Genre.create(name: 'Metal')
jam = Genre.create(name: 'Jam')
rnb = Genre.create(name: 'R&B')
soul = Genre.create(name: 'Soul')
blues = Genre.create(name: 'Blues')

r1 = Record.create(title: 'Exile on Main Street', band: 'Rolling Stones', release_date: '1972', price: 15.00, description: 'Love it', genre_id: rock.id)
r2 = Record.create(title: 'Axomoxoa', band: 'Grateful Dead', release_date: '1971', price: 20.00, description: 'Heart it', genre_id: rock.id)
r3 = Record.create(title: 'Highwaymen', band: 'Waylon Jennings', release_date: '1993', price: 17.00, description: 'Hate it', genre_id: country.id)
r4 = Record.create(title: 'Goat Head Soup', band: 'Rolling Stones', release_date: '1972', price: 15.00, description: 'One of the best albums out there! Great condition. Original release copy from 72', genre_id: rock.id)
r5 = Record.create(title: 'Remain in Light', band: 'Talking Heads', release_date: '1980', price: 10.00, description: 'One of their best albums. Great condition. In Mono.', genre_id: rock.id)
r6 = Record.create(title: '2001', band: 'Dr. Dre', release_date: '1999', price: 25.00, description: 'Must have record. Great condition, very cared for. No scratches. Stereo definition.', genre_id: rap.id)
r7 = Record.create(title: 'Red Headed Stranger', band: 'Willie Nelson', release_date: '1975', price: 11.00, description: 'Very underrated in my opinion. Classic Willie sound. Original release copy. Good Condition. Minor tears on cover.', genre_id: country.id)
r8 = Record.create(title: 'Iowa', band: 'Slipknot', release_date: '2001', price: 8.00, description: 'Heavy record. Ready the story behind the album and creative processes. Wear and tear on the cover with minor scratches to b-side.', genre_id: metal.id)
r9 = Record.create(title: 'The Story of the Ghost', band: 'Phish', release_date: '1998', price: 30.00, description: 'THE best phish album hands down. This copy is a super rare original copy from 1998 record store day in Tuscaloosa, Alabama. Amazing condition. Still in plastic sleeve.', genre_id: country.id)
r10 = Record.create(title: 'The Dock of the Bay', band: 'Otis Redding', release_date: '1967', price: 18.00, description: 'Classic record. OK condition. Some skips possibly. Second generation release.', genre_id: soul.id)
r11 = Record.create(title: 'Purple Rain', band: 'Prince', release_date: '1984', price: 12.00, description: 'Obviously a good album. Special edition post-humus. Great condition, like new', genre_id: rnb.id)
r12 = Record.create(title: 'Maggot Brain', band: 'Funkadelic', release_date: '1971', price: 45.00, description: 'Honestly, if you have never heard this album, do yourself a favor and grab it. Brand new, never opened(I have 3 copies).', genre_id: blues.id)

rr1 = Review.create(title: 'So worth it!', description: 'I love this album! No wonder it is condsider the best!!!', rating: 5, record_id: r1.id, user_id: u1.id)
rr2 = Review.create(title: 'Huge fan now', description: 'OMG cant get enough. The sound is impeccable', rating: 4, record_id: r2.id, user_id: u2.id)
rr3 = Review.create(title: 'Not the best', description: 'Nothing like the classic Waylon days. Not bad nonetheless.', rating: 2, record_id: r3.id, user_id: u3.id)
rr4 = Review.create(title: 'Gotta love the stones', description: 'Nostalgia nostalgia nostalgia', rating: 5, record_id: r4.id, user_id: u4.id)
rr5 = Review.create(title: 'Kinda sound like phish...?', description: 'Weird sound. Weird group. Ill take it.', rating: 3, record_id: r5.id, user_id: u5.id)
rr6 = Review.create(title: 'Yeah....just yeah', description: 'Literally my childhood album!', rating: 4, record_id: r6.id, user_id: u6.id)
rr7 = Review.create(title: 'Willie never fails', description: 'Willie at his finest. Underrated album', rating: 4, record_id: r7.id, user_id: u7.id)
rr8 = Review.create(title: 'Whoa...lol', description: '...A little heavy on the death...', rating: 1, record_id: r8.id, user_id: u8.id)
rr9 = Review.create(title: 'Ok, I get it', description: 'So this is phish, huh? Gimme more', rating: 5, record_id: r9.id, user_id: u9.id)
rr10 = Review.create(title: 'Obviously...right?', description: 'No review needed.', rating: 4, record_id: r10.id, user_id: u10.id)
rr11 = Review.create(title: 'How about that halftime show', description: 'Overplayed but obviously an all-timer', rating: 3, record_id: r11.id, user_id: u5.id)
rr12 = Review.create(title: 'Did I just trip?', description: 'Yoooo I need a few days to recover after that ride.', rating: 4, record_id: r12.id, user_id: u7.id)

ur1 = UserRecord.create(user_id: u1.id, record_id: r1.id)
ur2 = UserRecord.create(user_id: u2.id, record_id: r2.id)
ur3 = UserRecord.create(user_id: u3.id, record_id: r3.id)

puts 'Seeds Loaded'

#add link to review titles in reviews index
#fix reviews menu button redirection
#fix list a record
#fix/make checkout redirection
#research striper faker for checkout
#record band and record price to current cart and total
#***20 Methods***
#clean up models/controllers
#add models/controllers if needed(possibly cart model)
#style


#dont touch this
#<%= link_to 'Main', @user %><strong> ·</strong>
#<%= link_to 'Shop', static_show_path %><strong> ·</strong>
#<%= link_to 'Reviews', @review %><strong> ·</strong>
#<%= link_to 'About', root_path %> <strong> ·</strong>