json.array!(@galleries) do |gallery|
  json.extract! gallery, :photo_file_name, :photo_file_size, :photo_content_type, :photo_updated_at, :event_id
  json.url gallery_url(gallery, format: :json)
end