$ ->
   autocomplete = new google.maps.places.Autocomplete((document.getElementById("start_address")),
      types: ["geocode"]
    )
  google.maps.event.addListener autocomplete, "place_changed", ->
      fillInAddress()
      return

    return
  fillInAddress = ->
    place = autocomplete.getPlace()

  geolocate = ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition (position) ->
        geolocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
        circle = new google.maps.Circle(
          center: geolocation
          radius: position.coords.accuracy
        )
        autocomplete.setBounds circle.getBounds()
        return

    return
  placeSearch = undefined
  autocomplete = undefined
