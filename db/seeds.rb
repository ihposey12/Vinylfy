# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserRecord.destroy_all
User.destroy_all
Genre.destroy_all
Record.destroy_all
Review.destroy_all

u1 = User.create(name: 'Juan', username: 'JC', password: 'ilovenicksaban12')
u2 = User.create(name: 'Jeremy', username: 'JR', password: 'ilovenicksaban13')
u3 = User.create(name: 'Hunter', username: 'HP', password: 'ilovenicksaban14')

pop = Genre.create(name: 'Pop')
rock = Genre.create(name: 'Rock')
country = Genre.create(name: 'Country')
rap = Genre.create(name: 'Rap')
metal = Genre.create(name: 'Metal')
jam = Genre.create(name: 'Jam')
rnb = Genre.create(name: 'R&B')
soul = Genre.create(name: 'Soul')
blues = Genre.create(name: 'Blues')

r1 = Record.create(title: 'Exile on Main Street', band: 'Rolling Stones', release_date: '1972', price: 15.00, genre_id: rock.id)
r2 = Record.create(title: 'Axomoxoa', band: 'Grateful Dead', release_date: '1971', price: 20.00, genre_id: jam.id)
r3 = Record.create(title: 'Highwaymen', band: 'Waylon Jennings', release_date: '1993', price: 17.00, genre_id: country.id)

rr1 = Review.create(description: 'The Rolling Stones 10th studio album, released as a double album.', rating: 4, record_id: r1.id, user_id: u1.id)
rr2 = Review.create(description: 'The Grateful Deads 2 studio album.', rating: 5, record_id: r2.id, user_id: u2.id)
rr3 = Review.create(description: 'Waylon Jennings released this with the help of Johnny Cash and Merle Haggard', rating: 3, record_id: r3.id, user_id: u3.id)

ur1 = UserRecord.create(user_id: u1.id, record_id: r1.id)
ur2 = UserRecord.create(user_id: u2.id, record_id: r2.id)
ur3 = UserRecord.create(user_id: u3.id, record_id: r3.id)

puts 'Seeds Loaded'

#MUST migrate new column to Records AND Reviews.
#Record get a description:text
#Review gets a title:string