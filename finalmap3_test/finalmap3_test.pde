//Global Variables
boolean state = false;
//image placement
float x = 0; 
float y = 0;

int markerSize = 20;

//Table
Table countries;

//images
PImage map;
PImage map2;
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

//float [] locationslatnp = new float[numElements];
//float [] locationslonnp = new float[numElements];
//String [] namesnp = new String[numElements];
//float [] locationslatd = new float[numElements];
//float [] locationslond = new float[numElements];
//String [] namesd = new String[numElements];

void setup () {
  size(850, 621);
  //drawing map background
  map = loadImage("worldmap.png");
  map2= loadImage("worldmap2.png");
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
  
  //countries = loadTable("Countries.csv", "header");
  //countries.setFloat("country", "latitude");
  //countries.getFloat(2, 6);
}

void draw () {

  //making the map have a nice opacity using
  //a rectangle hack
  println(millis());
  if (millis()<1400) {
    noStroke();
    fill(0, 10);
    rect(0, 0, 850, 621);
  }

  for (int i = 0; i < numElements; i++) {
    //nonProfits
    strokeWeight (7);
    stroke(158, 218, 230, 2);
    //point(latnp[i], lonnp[i]);
    ellipse(latnp[i], lonnp[i], markerSize, markerSize);

    //designers
    strokeWeight(7);
    stroke(237, 194, 152, 2);
    
    //point(latd[i], lond[i]);
    ellipse(latd[i], lond[i], markerSize, markerSize);


    //drawing lines that connect designers to nonprofits
  }
}
  void mousePressed () {
    
    if (mouseX > latd[0] && mouseX < latd[0] + markerSize && mouseY > lond[0] && mouseY < lond[0] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[0], lond[0], latnp[0], lonnp[0]);
       image(designerimages[0], latd[0], lond[0], 70, 70);
    }
    
    if (mouseX > latd[1] && mouseX < latd[1] + markerSize && mouseY > lond[1] && mouseY < lond[1] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[1], lond[1], latnp[1], lonnp[1]);
       image(designerimages[1], latd[1], lond[1], 70, 70);
    }
    
    if (mouseX > latd[2] && mouseX < latd[2] + markerSize && mouseY > lond[2] && mouseY < lond[2] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[2], lond[2], latnp[2], lonnp[2]);
       image(designerimages[2], latd[2], lond[2], 70, 70);
    }
    
    if (mouseX > latd[3] && mouseX < latd[3] + markerSize && mouseY > lond[3] && mouseY < lond[3] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[3], lond[3], latnp[3], lonnp[3]);
       image(designerimages[3], latd[3], lond[3], 70, 70);
    }
    
    if (mouseX > latd[4] && mouseX < latd[4] + markerSize && mouseY > lond[4] && mouseY < lond[4] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[4], lond[4], latnp[4], lonnp[4]);
       image(designerimages[4], latd[4], lond[4], 70, 70);
    }
    
    if (mouseX > latd[5] && mouseX < latd[5] + markerSize && mouseY > lond[5] && mouseY < lond[5] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[5], lond[5], latnp[5], lonnp[5]);
       image(designerimages[5], latd[5], lond[5], 70, 70);
    }
    
    if (mouseX > latd[6] && mouseX < latd[6] + markerSize && mouseY > lond[6] && mouseY < lond[6] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[6], lond[6], latnp[6], lonnp[6]);
       image(designerimages[6], latd[6], lond[6], 70, 70);
    }
    
    if (mouseX > latnp[0] && mouseX < latnp[0] + markerSize && mouseY > lonnp[0] && mouseY < lonnp[0] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[0], lond[0], latnp[0], lonnp[0]);
       image(nonprofitimages[0], latnp[0], lonnp[0], 70, 70);
    }
    
    if (mouseX > latnp[1] && mouseX < latnp[1] + markerSize && mouseY > lonnp[1] && mouseY < lonnp[1] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[1], lond[1], latnp[1], lonnp[1]);
       image(nonprofitimages[1], latnp[1], lonnp[1], 70, 70);
    }
    
    if (mouseX > latnp[2] && mouseX < latnp[2] + markerSize && mouseY > lonnp[2] && mouseY < lonnp[2] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[2], lond[2], latnp[2], lonnp[2]);
       image(nonprofitimages[2], latnp[2], lonnp[2], 70, 70);
    }
    
    if (mouseX > latnp[3] && mouseX < latnp[3] + markerSize && mouseY > lonnp[3] && mouseY < lonnp[3] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[3], lond[3], latnp[3], lonnp[3]);
       image(nonprofitimages[3], latnp[3], lonnp[3], 70, 70);
    }
    
    if (mouseX > latnp[4] && mouseX < latnp[4] + markerSize && mouseY > lonnp[4] && mouseY < lonnp[4] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[4], lond[4], latnp[4], lonnp[4]);
       image(nonprofitimages[4], latnp[4], lonnp[4], 70, 70);
    }
    
    if (mouseX > latnp[5] && mouseX < latnp[5] + markerSize && mouseY > lonnp[5] && mouseY < lonnp[5] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[5], lond[5], latnp[5], lonnp[5]);
       image(nonprofitimages[5], latnp[5], lonnp[5], 70, 70);
    }
    
    if (mouseX > latnp[6] && mouseX < latnp[6] + markerSize && mouseY > lonnp[6] && mouseY < lonnp[6] + markerSize){
       strokeWeight(2);
       stroke(136, 255, 192);
       line(latd[6], lond[6], latnp[6], lonnp[6]);
       image(nonprofitimages[6], latnp[6], lonnp[6], 70, 70);
    }



 }
 
 void keyPressed() {
   
   image(map2, 0, 0);

    noStroke();
    fill(0, 150);
    rect(0, 0, 850, 621);

   //if(key == ' '){
   //tint(255, 127);  // Display at half opacity
  //or (int i = 0; i < 7; i++) {
  //mage(designerimages[6], latd[6], lond[6],70, 70);
 
// //  }
 }



//if (isHovering()==true) {
//  println("i am hovering");
//  for (int i = 0; i < numElements; i++) {   
//    image(designerimages[i], latd[i], lond[i], 50, 50);
//  }
//}



//boolean isHovering() {
//  //return true;

//   float distance = dist(mouseX, mouseY, , );
//   if (distance < markerSize) {
//     return true;
//   } else {
//     return false;
//   }

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