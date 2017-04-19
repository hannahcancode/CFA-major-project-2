function init() {
  var input = document.getElementById('profile_location');
  var options = {
    componentRestrictions: {country: 'au'},
    types: ['(cities)']
  };
  autocomplete = new google.maps.places.Autocomplete( input, options );
}
google.maps.event.addDomListener(window, 'load', init);
