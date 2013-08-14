json.array!(@events) do |event|
  json.extract! event, :name, :agenda, :total_seats, :total_attendence, :any_talk, :keynoter_name, :talk_subject, :address
  json.url event_url(event, format: :json)
end