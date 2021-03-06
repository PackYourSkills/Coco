$(document).ready(function() {
  var nest_address = $('#nest_address').get(0);

  if (nest_address) {
    var autocomplete = new google.maps.places.Autocomplete(nest_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(nest_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }

  var search_address = $('#search_address').get(0);

  if (search_address) {
    var autocomplete = new google.maps.places.Autocomplete(search_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onSearchPlaceChanged);
    google.maps.event.addDomListener(search_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#nest_address').trigger('blur').val(components.address);
  $('#nest_zip_code').val(components.zip_code);
  $('#nest_city').val(components.city);
  if (components.country_code) {
    $('#nest_country').val(components.country_code);
  }
}

function onSearchPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#search_address').trigger('blur').val(components.formatted_address);
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  var formated_address = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }
  formatted_address = place.formatted_address

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code,
    formatted_address: formatted_address
  };
}
