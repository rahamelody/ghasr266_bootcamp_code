//Object Oriented Programming!!!!!!!!!!!!!!!!!!


//Global Variables

Bubble b1;
Bubble b2;

void setup() {
  
  size(600,600);
  
  //initiate an instance of Bubble
  b1 = new Bubble(100, 300, 50);
  b2 = new Bubble(300, 300, 100);
  
}

void draw() {
  
  background(0);
  
  b1.display();
  b1.ascend();
  
  b2.display();
  b2.ascend();
  

}



