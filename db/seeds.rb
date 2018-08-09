# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Author.find_each(&:destroy)
Book.find_each(&:destroy)

['Mobile', 'Development', 'Photo', 'Web design', 'Web development'].each do |name|
  Category.find_or_create_by!(title: name)
end


20.times do |_author|
  Author.create!(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , biography: Faker::Lorem.paragraph(5, true))
end


25.times do |_book|
  Book.create!(title: Faker::Book.title, description: Faker::Lorem.sentence(100, false, 0).chop,
                          price: Faker::Number.decimal(4, 2),
                          count_in_stock: Faker::Number.between(1, 200), author: Author.last, categories: Category.last(rand(1..5)))
end

