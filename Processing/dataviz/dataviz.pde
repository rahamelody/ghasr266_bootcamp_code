//Global Variables

PImage bg;

void setup () {
  size(1280, 720);
  background(bg);
  
  //load data into Processing
  String wholeData = loadStrings("data/data.tsv");
  splitData(wholeData);
}
