//Global Variables

PImage bg;

ArrayList <CheapEats> myCheapEats;

void setup () {
  size(1280, 720);
  background(bg);
  bg = loadImage("bg.png");
  
  colorMode(HSB, 360, 100, 100);
  //load data into Processing
  String [] wholeData  = loadStrings("data/data.tsv");
  splitData(wholeData);
  smooth();
}

void draw() {
}

void splitData(String [] myArray){
  
  for(int i = 0; i < myArray.length; i++) {
    String [] myRow = myArray[i];
    //splitting the file into rows
    String [] cols = split(myRow, "/t");
    
    //seperate the file into cols for strings its trim and for ints its parseInt
    String placesName = trim(cols[0]);
    String placesUrl = trim(cols[1]);
    String price = trim(cols[2]);
    int nReviews = parseInt(trim(cols[3]));
    String cuisine = trim(cols[4]);
    String cuisineUrl = trim(cols[5]);
    float radius = parseFloat(trim(col[6]));
    
    CheapEats tempGraph = new CheapEats( placesName, placesUrl, price, nReviews, cuisine, cuisineUrl, radius);
    myCheapEats.add(tempGraph);
    
  }
}
