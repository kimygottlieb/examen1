json.array!(@messages) do |message|
  json.extract! message, :id, :user, :message_text
  json.url message_url(message, format: :json)
end
