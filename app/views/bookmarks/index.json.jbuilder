json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :url, :my_description, :read_flag, :title, :favicon, :object_description, :object_image
  json.url bookmark_url(bookmark, format: :json)
end
