//with array lists you don't have to tell your computer the size of your array

ArrayList<Particle> particles;




void setup () {
  size (500, 500);
  
  //Initialize an instant of the array list particles
  particles = new ArrayList<Particle>();
 
  
}

void draw () {
  background (0);
  noStroke();
  fill(random(255), random(255), random(255));
  
  //add object from the Particle class into our arraylist
  particles.add(new Particle(new PVector (width/2, 50)));
  
  
  for(int i=0; i < particles.size(); i++) {
    particles.get(i).run();
    particles.get(i).display();
    }
}
