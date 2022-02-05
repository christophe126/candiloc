// MAPBOX
import mapboxgl from '!mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"


const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map', // container ID
      style: 'mapbox://styles/mapbox/streets-v10', // style URL
      center: [2.3200410217200766, 48.8588897], // starting position [lng, lat]
      zoom: 12 // starting zoom
    });

  
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers)
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    }); 
  };
  
};
export { initMapbox };