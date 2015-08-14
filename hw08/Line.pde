class Line {
 
   //Construct
   
   Line(){
     
     float x, y;
     float dX, dY;
     
     Line(float x_, float y_, float dX_) {
       x = x_;
       y = y_;
       dX = dX_;
      
     }
   
   }
   
   //draw these bad boys
   void display() {
     stroke(0);
     strokeWeight(10);
     line(width/2, height/2, x, y);
   }
   
   void anim () {
     x+=dX;
   }
}
