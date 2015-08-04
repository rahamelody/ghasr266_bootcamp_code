void setup () {
  size(500,500);
}

void draw () {
 background (200, 200, 100); 
 
 rectMode (CENTER);
 noFill();
 stroke (0);
 strokeWeight (5);
 rect(width/2, height/2, 450, 450);
 
 //Draw a duck
 
 //Head
 noStroke ();
 fill (255,215,0);
 ellipse (width/2, height/2, 55, 55);
 //beak
 fill (255,140,0);
 ellipse (width/2-35, height/2+8, 35, 25);
 fill(0);
 //neck
 fill (255,215,0);
 rect(width/2, height/2+50, 30, 60);
//eye
fill(0);
ellipse (width/2-10, height/2-3, 10, 13);
//body
fill(255,215,0);
ellipse (width/2+40, height/2+80, 150, 100);
//feet
fill(255,140,0);
rect(width/2+20, height/2+140, 10, 30);
rect(width/2+40, height/2+140, 10, 30);
rect(width/2+15, height/2+150, 20, 10);
rect(width/2+45, height/2+150, 20, 10);
//water
fill(42,116,245);
rect(width/2,height/2+255, 500, 200);
}
