#
# Imports underscore and gmaps javascript source code
#
#= require underscore
#= require gmaps/google

@convert = (objects) ->
  array = []

  for x in objects
    from_pin =
      lat: x.from_lat
      lng: x.from_lng
      infowindow: x.from
    to_pin =
      lat: x.to_lat
      lng: x.to_lng
      infowindow: x.to
    array.push from_pin
    array.push to_pin

  googleMap array

@googleMap = (content) ->
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers(content)
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$ ->
  $.ajax
    url: '/bike_routes.json'
  .done (data) ->
    convert data