json.array!(@anythings) do |anything|
  json.extract! anything, :content, :user_id
  json.url anything_url(anything, format: :json)
end
