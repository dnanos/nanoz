json.array!(@authors) do |author|
  json.extract! author, :id, :name, :description, :image_url, :book_id, :user_id
  json.url author_url(author, format: :json)
end
