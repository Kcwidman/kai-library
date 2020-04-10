# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subjects = [
  Subject.create(name: "Physics"),
  Subject.create(name: "Mathematics"),
  Subject.create(name: "Chemistry"),
  Subject.create(name: "Psychology"),
  Subject.create(name: "Geography")
]

publishers = [
  Publisher.create(name: "Books R US"),
  Publisher.create(name: "Penguin Books"),
  Publisher.create(name: "Pearson"),
  Publisher.create(name: "Ascend Books"),
  Publisher.create(name: "Scholastic Corporation")
]

(1..5).each do |i|
  Book.create(title: "Book ##{i}", price: 9.99, description: "From seed", subjects: [subjects[i-1]], publisher_id: [publishers[i-1]])
end



Library.create name: "JOCO Library", location: "Overland Park, KS"
Library.create name: "Fountain Hill Library", location: "Phoenix, AZ"
Library.create name: "Indian Creek Library", location: "Olathe, KS"

