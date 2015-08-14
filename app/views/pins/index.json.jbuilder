json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :image, :user_id
  json.url pin_url(pin, format: :json)
end
