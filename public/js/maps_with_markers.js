function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 16,
    center: {lat: 41.876218, lng:-87.653143}
  });

  var dbcMarker = new google.maps.Marker({
    position: {lat: 41.876218, lng:-87.653143},
    map: map,
    title: 'Dev Bootcamp'
  });

  var meryHomeMarker = new google.maps.Marker({
    position: {lat: 41.877909, lng: -87.655923},
    map: map,
    title: 'Mercy Home For Boys and Girls'
  });

  var dreamsForKidsMarker = new google.maps.Marker({
    position: {lat: 41.878022, lng: -87.648146},
    map: map,
    title: 'Dreams for Kids'
  });


    var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
      '<div id="bodyContent">'+
      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
      'sandstone rock formation in the southern part of the '+
      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
      'south west of the nearest large town, Alice Springs; 450&#160;km '+
      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
      'Aboriginal people of the area. It has many springs, waterholes, '+
      'rock caves and ancient paintings. Uluru is listed as a World '+
      'Heritage Site.</p>'+
      '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited June 22, 2009).</p>'+
      '</div>'+
      '</div>';

  var currentLocationWindow = new google.maps.InfoWindow({
    content: "This is your current location."
  });

  dbcMarker.addListener('click', function() {
    currentLocationWindow.open(map, dbcMarker);
  });
}


