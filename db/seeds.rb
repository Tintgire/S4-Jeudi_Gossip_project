# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
	u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::BojackHorseman.quote, email: Faker::Internet.email, age: Faker::Number.between(1, 100), city_id: City.all.sample.id)
	c = City.create(name: Faker::Nation.capital_city, postal_code: Faker::Code.asin)
	t = Tag.create(title: Faker::DragonBall.character, )
end

20.times do
	g = Gossip.create(title: Faker::Beer.name, content: Faker::Beer.malts, user_id: User.all.sample.id)
end

Gossip.all.each do |gossip|
    rand(1..3).times do
        jt = JoinTagToGossip.create!(gossip_id: gossip.id, tag_id: Tag.all.sample.id)
    end
end
