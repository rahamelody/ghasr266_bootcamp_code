

//what kind of data (xPos, yPos, a, v) and functionality(moves, is bound, explodes)?
int numElements = 300;
PVector location = new PVector(width/2, height/2);

Particle [] pArray = new Particle[numElements];


void setup () {
  size (500, 500);
  
  //Initialize array
  for (int i =  0; i < numElements; i++) {
    pArray [i] = new Particle(location);
  }
}

void draw () {
  background (255);
  fill(0);
  for(int i=0; i < numElements; i++) {
    pArray[i].run();
  }
}
