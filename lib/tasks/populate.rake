namespace :populate do
  task :build_library, [:N] => :environment do |t, args|#creates 1 library with many books and copies
    Library.create name: Faker::Educator.campus, location: Faker::Nation.capital_city
    args[:N].to_i.times do
      Publisher.create name: Faker::Book.unique.publisher
      Subject.create name: Faker::Book.genre
      Book.create title: Faker::Book.unique.title, price: Faker::Number.decimal(l_digits: 2), description: Faker::ChuckNorris.fact, publisher_id: Publisher.last.id, subject_ids: Subject.last.id
      2.times do#makes 2 copies for every book
        Copy.create checked_out: Faker::Boolean.boolean(true_ratio: 0.4), condition: Faker::Number.digit, book_id: Book.last.id, library_id: Library.last.id
      end
    end
  end

end