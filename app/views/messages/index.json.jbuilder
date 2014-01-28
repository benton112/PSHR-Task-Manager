json.array!(@messages) do |message|
  json.extract! message, :id, :text, :from_id, :to_id
  json.url message_url(message, format: :json)
end
