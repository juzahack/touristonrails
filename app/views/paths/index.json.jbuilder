json.array!(@paths) do |path|
  json.extract! path, :id, :date, :place, :weather, :type, :trip
  json.url path_url(path, format: :json)
end
