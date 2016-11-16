json.extract! book, :id, :title, :price, :author, :available, :book_image, :Branch_id, :created_at, :updated_at
json.url book_url(book, format: :json)