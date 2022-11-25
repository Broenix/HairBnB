# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
User.destroy_all
Wig.destroy_all

#USERS

file = File.open(Rails.root.join("db/seeds/images/users/bruce-willis.jpeg"))
bruce = User.create!(name: "Bruce", last_name: "Willis", email: "brucewillis@gmail.com", password:"secret")
bruce.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/users/cameron-diaz.jpeg"))
cameron = User.create!(name: "Cameron", last_name: "Diaz",email: "camerondiaz@gmail.com", password:"secret")
cameron.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/users/dwayne-johnson.jpg"))
dwayne = User.create!(name: "Dwayne", last_name: "Johnson", email: "dwaynejohnson@gmail.com", password:"secret")
dwayne.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")

file = File.open(Rails.root.join("db/seeds/images/users/vincent-lagaf.png"))
vincent = User.create!(name: "Vincent", last_name: "Lagaf", email: "vincent-lagaf@gmail.com", password:"secret")
vincent.photo.attach(io: file, filename: "photo.jpg", content_type: "image/png")


# WIGS

file = File.open(Rails.root.join("db/seeds/images/wigs/Barbe.jpeg"))
barbe = Wig.create!(name: "Barbe", description: "Court, Dégradé", renting_price: 50, user: vincent, color: "Marron")
barbe.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Monarque.jpeg"))
monarque = Wig.create!(name: "Monarque", description: "Court, Dégradé", renting_price: 100, user: vincent, color: "Blanche")
monarque.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle semi-fin crête.jpeg"))
crête = Wig.create!(name: "Crête", description: "Perruque tulle semi-fin - Crête ", renting_price: 40, user: vincent, color: "Jaune")
crête.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle semi-fin frange.jpeg"))
frange = Wig.create!(name: "Perruque avec Frange", description: "Perruque tulle semi-fin", renting_price: 40, user: vincent, color: "Marron")
frange.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle semi-fin rose.jpeg"))
rose = Wig.create!(name: "Perruque rose", description: "Perruque tulle semi-fin", renting_price: 80, user: vincent, color: "Rose")
rose.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle semi-fin.jpeg"))
époque = Wig.create!(name: "Perruque d'époque", description: "Perruque tulle semi-fin - D'époque", renting_price: 80, user: cameron, color: "Blanche")
époque.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle mulet.jpeg"))
mulet = Wig.create!(name: "Perruque Mulet", description: "Perruque tulle semi-fin - Perruque bas du crâne", renting_price: 100, user: bruce, color: "Noire")
mulet.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seeds/images/wigs/Perruque tulle bordé.jpeg"))
perruquebordée = Wig.create!(name: "Perruque tule bordé", description: "Perruque tulle semi-fin bordé", renting_price: 200, user: dwayne, color: "Blanche")
perruquebordée.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# BOOKINGS


booking1 = Booking.create!(
    start_date: "2022-11-24",
    end_date:   "2022-11-27",
    status:      "pending",
    user: bruce,
    wig: barbe
)

booking2 = Booking.create!(
  start_date: "2022-11-24",
  end_date:   "2023-01-24",
  status:      "pending",
  user: cameron,
  wig: perruquebordée
)

booking3 = Booking.create!(
  start_date: "2022-11-24",
  end_date:   "2023-01-24",
  status:      "pending",
  user: vincent,
  wig: mulet
)

booking4 = Booking.create!(
  start_date: "2022-11-23",
  end_date:   "2023-01-25",
  status:      "pending",
  user: cameron,
  wig: mulet
)

booking5 = Booking.create!(
  start_date: "2022-11-02",
  end_date:   "2023-01-12",
  status:      "pending",
  user: dwayne,
  wig: mulet
)

booking6 = Booking.create!(
  start_date: "2023-02-20",
  end_date:   "2023-02-17",
  status:      "pending",
  user: bruce,
  wig: rose
)

booking6 = Booking.create!(
  start_date: "2023-05-11",
  end_date:   "2023-04-11",
  status:      "declined",
  user: bruce,
  wig: époque
)

puts "Finished!"
