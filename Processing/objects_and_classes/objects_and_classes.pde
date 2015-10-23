//Object Oriented Programming!!!!!!!!!!!!!!!!!!


//Global Variables

Bubble b; 

void setup() {
  
  size(600,600);
  
  //initiate an instance of Bubble
  b = new Bubble();
  
}

void draw() {
  
  background(0);
  
  b.display();
  b.ascend();
  

}



