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

  googleMap array[0], array[1]

@googleMap = (fromPin, toPin) ->
  directionsDisplay = new google.maps.DirectionsRenderer()
  directionsService = new google.maps.DirectionsService()

  origin = new google.maps.LatLng(fromPin.lat, fromPin.lng)
  destination = new google.maps.LatLng(toPin.lat, toPin.lng)

  request =
    origin: origin
    destination: destination
    travelMode: google.maps.TravelMode.DRIVING

  directionsService.route request, (response, status) ->
    if (status is google.maps.DirectionsStatus.OK)
      directionsDisplay.setDirections(response)

  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    # markers = handler.addMarkers(content)
    # handler.bounds.extendWith markers
    # handler.fitMapToBounds()
    directionsDisplay.setMap(handler.getMap())

$ ->
  $.ajax
    url: '/bike_routes.json'
  .done (data) ->
    convert data