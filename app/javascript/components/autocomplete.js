function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var vanAddress = document.getElementById('van_address');

    if (vanAddress) {
      var autocomplete = new google.maps.places.Autocomplete(vanAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(vanAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
