//Global Variables
boolean state = false;
//image placement
float x = 0; 
float y = 0;

int markerSize = 20;

//images
PImage map;

//////////////////////////////////////////
//NonProfits
//UNESCO: Paris, France
//Barefoot Foundation: Colombia
//Doctors Without Borders: Geneva, Switzerland
//Kiva: San Francisco, California
//Global Poverty Project: Aukland, NZ
//Lesben un Schwulenverband in Deutschland (LSVD): Berlin, Germany
//FREE!MUSIC: Moscow, Russia
float [] latnp = {400, 220, 415, 110, 805, 425, 490};
float [] lonnp = {150, 282, 155, 175, 412, 138, 117};
int numElements = latnp.length;
PImage [] nonprofitimages = new PImage[numElements];

//////////////////////////////////////////

//////////////////////////////////////////
//Designers
//Raha Ghassemi: Tehran, Iran
//Qinzi Tan: Hong Kong, China
//Shika Sing: New Dehli, India
//Priyal Parikh: Mumbai, India
//Alonoso Castro: Lima, Peru
//Ana: New Jersey
//Mikei: Toronto, Canada
PImage [] designerimages = new PImage[numElements];
float [] latd = {517, 663, 583, 573, 220, 215, 220};
float [] lond = {197, 233, 225, 250, 340, 185, 165};
//////////////////////////////////////////

void setup () {
  size(850, 621);
  //drawing map background
  map = loadImage("worldmap2.png");
  image(map, x, y);

  //images loading
  designerimages[0] = loadImage("zahra.png");
  designerimages[1] = loadImage("qinzi.png");
  designerimages[2] = loadImage("shikha.png");
  designerimages[3] = loadImage("priyal.png");
  designerimages[4] = loadImage("alonso.png");
  designerimages[5] = loadImage("ana.png");
  designerimages[6] = loadImage("mikei.png");

  nonprofitimages[0] = loadImage("unesco.png");
  nonprofitimages[1] = loadImage("bf.png");
  nonprofitimages[2] = loadImage("dwb.png");
  nonprofitimages[3] = loadImage("kiva.png");
  nonprofitimages[4] = loadImage("gpp.png");
  nonprofitimages[5] = loadImage("lvsd.png");
  nonprofitimages[6] = loadImage("fm.png");
}

void draw () {
  //re-drawing background so pictures go away

  //making the map have a nice opacity using
  //a rectangle hack
  if (millis()<1000) {
    noStroke();
    fill(0, 10);
    rect(0, 0, 850, 621);
  }
    background(map);
//loops that dray designers, nonprofits, and lines
  for (int i = 0; i < numElements; i++) {
    displayDesigners(latd[i], lond[i], designerimages[i]);
    displayNonProfits(latnp[i], lonnp[i], nonprofitimages[i]);   
    if (mouseX > latd[i] && mouseX < latd[i] + markerSize && mouseY > lond[i] && mouseY < lond[i] + markerSize) {
     strokeWeight(2);
     stroke(136, 255, 192);  
     line(latd[i], lond[i], latnp[i], lonnp[i] );
    }
  }
}
 
 void displayDesigners(float x, float y, PImage img) {

  //designers
  strokeWeight(7);
  stroke(237, 194, 152, 2);
  
  ellipse(x, y, markerSize, markerSize);

  //hover
  if (isHovering(x, y)) {
    image(img, x, y, 50, 50);
  }
}

boolean isHovering(float x, float y) {
  float distance = dist(mouseX, mouseY, x, y);
  if (distance < markerSize/2) {
    return true;
  } else {
    return false;
  }
}

void displayNonProfits(float x, float y, PImage img) {

  //nonProfits
  strokeWeight (7);
  stroke(158, 218, 230, 2);
  ellipse(x, y, markerSize, markerSize);

  //hover
  if (isHovering(x, y)) {
    image(img, x, y, 50, 50);
  }
}



//if (isHovering()==true) {
//  println("i am hovering");
//  for (int i = 0; i < numElements; i++) {   
//    image(designerimages[i], latd[i], lond[i], 50, 50);
//  }
//}





//}

//boolean isHovering() {

// for (int i = 0; i < latd.length; i++) {

//   if ((mouseX == latd[i]+ 3) || (mouseX == latd[i]- 3) && (mouseY == lond[i]+3 || mouseY == lond[i]-3)) {

//     image(designerimages[i], latd[i], lond[i], 50, 50);
//   }
//   if ((mouseX == latnp[i]+ 3) || (mouseX == latnp[i]- 3) && (mouseY == lonnp[i]+3 || mouseY == lonnp[i]-3)) {

//     image(nonprofitimages[i], latnp[i], lonnp[i], 50, 50);
//   }
// }
//}