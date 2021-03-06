// MAPBOX
import mapboxgl from '!mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window);
    
    new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .setPopup(popup)
    .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: mapElement, // container ID
      style: 'mapbox://styles/mapbox/streets-v10', // style URL
      // center: [2.3200410217200766, 48.8588897], // starting position [lng, lat]
      // zoom: 15 // starting zoom
    });
    
    const markers = JSON.parse(mapElement.dataset.markers);
    // map.resize();
    global.map = map;
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  };

};
export { initMapbox };
