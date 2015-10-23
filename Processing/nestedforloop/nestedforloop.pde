
void setup () {
  size (500,500);
  background (0);
}

void draw () {
//  ellipse (25,25,50,50);
// Nested for loop
  for (int i = 0; i < 10; i++) { //width
    for (int j = 0; j < 10; j++) { //height
      noStroke();
      ellipse(25 + (i*50), 25 + (j*50), 50, 50);
      
    }
  
  
  }
  
  
}
