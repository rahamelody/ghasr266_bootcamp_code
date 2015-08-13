////////////
//RAHA GHASSEMI
//
//GLOBAL VARIABLES
//////////////////

int numVectors = 300;

Vector [] vectors = new Vector[numVectors];

void setup () {
  
  size(600,600);
  
  //initialize array
  for (int i = 0; i < numVectors; i++) {
    vectors[i] = new Vector (mouseX, height/2, random(255), random(255), random(255));
  }
  
  
}

void draw () {
  background (255);
  
  for (int i = 0; i < numVectors; i++) {
    vectors[i].display();
    vectors[i].addVectors();
  }
  
  
  
}
