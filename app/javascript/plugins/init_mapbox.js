import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/daytchw/ckpgwsvni0u8017ns1i77flde', 
    //center: [40.735840661217814, -73.99209954046812]
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup({
      closeButton: false,
    }).setHTML(marker.info_window);
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '30px';
    element.style.height = '30px';
    element.style.opacity = '90%';

    new mapboxgl.Marker(element, {
    })
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 100, maxZoom: 12, duration: 4000 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new mapboxgl.NavigationControl());
  }
  
};

export { initMapbox };