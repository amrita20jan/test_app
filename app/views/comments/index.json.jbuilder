json.array!(@comments) do |comment|
  json.extract! comment, :id, :description, :program_id, :event_id
  json.url comment_url(comment, format: :json)
end
