//Table

String csv [];
String myData [] [];
PShape baseMap;


void setup () {
  background(255);
  size(1024, 512);
  baseMap = loadShape("map.svg");
  csv = loadStrings("Countries.csv");
  myData = new String [csv.length] [6];
  
  for (int i = 0; i<csv.length; i++) {
    myData[i] = csv [i].split(",");
  }
}

void draw () {
  shape (baseMap, 0, 0, width, height);
  noStroke();
  
   for(int i=0; i<myData.length; i++){
    fill(255, 0, 0, 50);
    textMode(MODEL);
    noStroke();
    float graphLong = map(float(myData[i][3]), -180, 180, 0, width);
    float graphLat = map(float(myData[i][4]), 90, -90, 0, height);
    float markerSize = 0.05*sqrt(float(myData[i][2]))/PI;
    int yr = int(myData[i][1]);
 
    if(yr < map (mouseX,0,width,1332,2014)){
    ellipse(graphLong, graphLat, markerSize, markerSize);
       
      if(i<20){
        fill(0);
        text(myData[i][0], graphLong + markerSize + 5, graphLat + 4);
        noFill();
        stroke(0);
        line(graphLong+markerSize/2, graphLat, graphLong+markerSize, graphLat);
      
    }
  }
}

}
