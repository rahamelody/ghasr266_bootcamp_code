//We define an array of Bubbles

int numElements = 100;
Bubble [] bubbles = new Bubble[numElements];

void setup () {
  background (255);
  size(600,600);
  for (int i = 0; i < numElements; i++) {
    bubbles[i] = new Bubble(random(600), random(600), random(1, 20), random(255), random(255), random(255));
  }
  
}

void draw () {
  background(255);
  
  for(int i = 0; i < numElements; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
  
}
