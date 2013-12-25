json.array!(@books) do |book|
  json.extract! book, :id, :name, :description, :year, :pages, :weight, :created_at, :publisher_id
  json.url book_url(book, format: :json)
end
