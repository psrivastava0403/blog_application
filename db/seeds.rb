# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

user = User.create!(email: "mohit@example.com", password: "mh@1234", password_confirmation: "mh@1234", name: "mohit", age: 35, mobile_no: "+91 9169817869", address: "15 swaraj nagar panki kanpur")

books = [
  { title: "To Kill a Mockingbird", writer: "Harper Lee" },
  { title: "1984", writer: "George Orwell" },
  { title: "The Great Gatsby", writer: "F. Scott Fitzgerald" },
  { title: "Pride and Prejudice", writer: "Jane Austen" },
  { title: "The Catcher in the Rye", writer: "J.D. Salinger" },
  { title: "The Lord of the Rings", writer: "J.R.R. Tolkien" },
  { title: "Harry Potter and the Philosopher’s Stone", writer: "J.K. Rowling" },
  { title: "The Alchemist", writer: "Paulo Coelho" },
  { title: "The Hobbit", writer: "J.R.R. Tolkien" },
  { title: "Moby Dick", writer: "Herman Melville" }
]

books.each do |book|
  Book.create!(
    title: book[:title],
    writer: book[:writer],
    price: rand(200..800),
    about: "About this book, it is very intresting book which was written by : #{book[:writer]}.",
    description: "A classic must-read book: #{book[:title]}",
    launch_date: Date.today - rand(100..1000).days,
    user_id: user.id
  )
end
