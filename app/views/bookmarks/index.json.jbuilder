json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :user_id, :url, :description, :read_flag
  json.url bookmark_url(bookmark, format: :json)
end
