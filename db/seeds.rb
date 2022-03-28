puts "Deleting old data..."
House.destroy_all
User.destroy_all
Review.destroy_all

# Seed your database here

puts "🌱 Creating users..."
user1 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)
user2 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)
user3 = User.create(
    name: Faker::Name.name, 
    username: Faker::Internet.username,
    email: Faker::Internet.email, 
    image: Faker::Avatar.image, 
    bio: Faker::Hipster.paragraph)

puts "Creating houses..."
house1 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155534/most-expensive-houses-in-the-world-buckingham-palace-london-luxe-digital-900x600.jpg.webp", 
    location: "London", 
    description: "quaint and charming, real taste of England")
house2 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155528/most-expensive-houses-in-the-world-antilia-mumbai-luxe-digital-900x600.jpg.webp",
    location: "India", 
    description: "Amuzzzing")
house3 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155550/most-expensive-houses-in-the-world-les-palais-bulles-luxe-digital-900x600.jpg.webp", 
    location: "France", 
    description: "Oui Oui")
house4 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155619/most-expensive-houses-the-world-one-luxe-digital-900x600.jpg.webp", 
    location: "California", 
    description: "Supa chill... like so chill")
house5 = House.create(
    image: "https://cdn.luxe.digital/media/20220301155544/most-expensive-houses-in-the-world-four-fairfield-pond-luxe-digital-900x600.jpg.webp", 
    location: "New York", 
    description: "Our modest second home, very cozy")

puts "Creating reviews..."
Review.create(
    house: house1, 
    user: user1, 
    rating: 5, 
    content: "GRRRREATT")
Review.create(
    house: house1, 
    user: user2, 
    rating: 3, 
    content: "okay")
Review.create(
    house: house2, 
    user: user1, 
    rating: 1, 
    content: "bad")
Review.create(
    house: house2, 
    user: user2, 
    rating: 1, 
    content: "messy")
Review.create(
    house: house2, 
    user: user3, 
    rating: 1, 
    content: "cramped")
Review.create(
    house: house3, 
    user: user1, 
    rating: 5, 
    content: "fantastic")
Review.create(
    house: house4, 
    user: user1, 
    rating: 2, 
    content: "meh")


puts "✅ Done seeding!"
