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
    element.id = `${marker.id}`;
    element.className = 'marker marker-logo';
    element.style.backgroundSize = 'contain';
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
  map.fitBounds(bounds, { padding: 30, maxZoom: 17, duration: 4000 });
};

const add3dLayer = (map) => {
  map.addLayer({
    'id': 'add-3d-buildings',
    'source': 'composite',
    'source-layer': 'building',
    'filter': ['==', 'extrude', 'true'],
    'type': 'fill-extrusion',
    'minzoom': 15,
    'paint': {
      'fill-extrusion-color': '#aaa',
      'fill-extrusion-height': [
        'interpolate',
        ['linear'],
        ['zoom'],
        15,
        0,
        15.05
        ['get', 'height']
      ],
      'fill-extrusion-base': [
        'interpolate',
        ['linear'],
        ['zoom'],
        15,
        0,
        15.05
        ['get', 'min_height']
      ],
      'fill-extrusion-opacity': 0.6
    }
  });
}


const changeMarkersOnHover = () => {
  const allCards = document.querySelectorAll('.index-card-product');
  allCards.forEach((card)=> {
    const id = card.getAttribute('href').split('/')[2];
    const marker = document.querySelector(`#marker-${id}`);
    card.addEventListener('mouseenter', function(event) {
      marker.classList.remove("marker-logo");
      marker.classList.add("marker-hover-logo");
    });
    card.addEventListener('mouseleave', function(event) {
      marker.classList.remove("marker-hover-logo");
      marker.classList.add("marker-logo");
    });
  });
};


const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (!mapElement) {
    return
  }
  const map = buildMap(mapElement);
  const markers = JSON.parse(mapElement.dataset.markers);
  addMarkersToMap(map, markers);
  fitMapToMarkers(map, markers);
  map.addControl(new mapboxgl.NavigationControl());

  map.on('load', function () {

    map.addSource('mapbox-dem', {
      'type': 'raster-dem',
      'url': 'mapbox://mapbox.mapbox-terrain-dem-v1',
      'tileSize': 512,
      //'maxzoom': 14
    });
    map.setTerrain({ 'source': 'mapbox-dem', 'exaggeration': 1.5 });
    add3dLayer(map);
  });

  changeMarkersOnHover()

};

export { initMapbox };