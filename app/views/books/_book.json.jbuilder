json.extract! book, :id, :title, :price, :about, :description, :launch_date, :writer, :created_at, :updated_at
json.url book_url(book, format: :json)
