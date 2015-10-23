//import statements
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;

//map reference
UnfoldingMap currentmap;
UnfoldingMap map1;
UnfoldingMap map2;
UnfoldingMap map3;

void setup () {
  //initialize new map object with default event function for basic interaction
  //aka double-click to zoom and drag to pan the map
  size (800,600);
  map1 = new UnfoldingMap(this, new OpenStreetMap.CloudmadeProvider(MapDisplayFactory.OSM_API_KEY, 23058));
  map2 = new UnfoldingMap(this, new Microsoft.AerialProvider());
  map3 = new UnfoldingMap (this, new Google.GoogleMapProvider());
  MapUtils.createDefaultEventDispatcher(this, map1, map2, map3);
  
  currentMap = map1;
}

void draw () {
  //draw map
  currentmap.draw();
}

void keyPressed () {
  if (key == '1') {
    currentMap = map1;
  } else if (key == '2') {
    currentMap = map2;
  } else if (key == '3') {
    currentMap = map3;
  }
}
