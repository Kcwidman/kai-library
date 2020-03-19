# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.create :name => "Physics"
Subject.create :name => "Mathematics"
Subject.create :name => "Chemistry"
Subject.create :name => "Psychology"
Subject.create :name => "Geography"

(1..5).each do |i|
    Book.create(title: "##{i}", subject_id: i, price: 9.99, description: "From seed")
end