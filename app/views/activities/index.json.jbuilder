json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :type, :description
  json.url activity_url(activity, format: :json)
end
