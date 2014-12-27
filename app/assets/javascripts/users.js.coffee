$ ->
   autocompletestart = new google.maps.places.Autocomplete((document.getElementById("start_address")),
      types: ["geocode"]
    )
  autocompleteend = new google.maps.places.Autocomplete((document.getElementById("dest_address")),
    types: ["geocode"]
  )

  google.maps.event.addListener autocompletestart, "place_changed", ->
      fillInAddress()
      return

    return
  google.maps.event.addListener autocompleteend, "place_changed", ->
     fillInAddress()
     return

    return
  fillInAddress = ->
    placestart = autocompletestart.getPlace()
  fillInAddress = ->
    placeend = autocompleteend.getPlace()
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
