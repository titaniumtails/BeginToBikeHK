json.array!(@bike_routes) do |bike_route|
  json.extract! bike_route, :id, :name, :from, :to, :from_district, :to_district, :map_thumb, :date, :map_detail, :warning, :warning_thumb, :description, :mtb, :distance, :time, :difficulty, :comments, :best_tod, :user_generated, :ranking
  json.url bike_route_url(bike_route, format: :json)
end
