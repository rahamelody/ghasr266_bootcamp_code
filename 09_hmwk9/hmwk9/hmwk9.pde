ArrayList<Line> lines;

void setup() {
  size (500, 500);
  
  //Initialiaze an instant of array list lines
  lines = new ArrayList<Line>();
}

void draw () {
  background(255);
  strokeWeight(5);
  fill(random(255), random(255), random(255));
  
  //add object from the Particle class into array list
  lines.add(new Line(new PVector (width/2, 50)));
  
  for(int i = 0; i < lines.size(); i++) {
    lines.get(i).run();
    lines.get(i).display();
  }
}
