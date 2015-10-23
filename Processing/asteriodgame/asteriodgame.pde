//Global Variables

//Variables
Player ship;
boolean keyLeft = false;
boolean keyRight = false;
boolean keyShoot = false;
int score;

//ArrayList Variables
ArrayList<Asteroid> asteroids;
ArrayList<Shot> shots;

void setup () {
  size(1000, 800);
  frameRate(30);
  background(10);
  noCursor();

  ship = new Player(width/2, height/2);
  asteroids = new ArrayList<Asteroid>();
  shots = new ArrayList<Shot>();

  score = 0;

  restart();
}

void draw () {

  rectMode(CORNER);
  noStroke();
  fill(10, 80);
  rect(0, 0, width, height);
  

  ship.display();
  ship.update();

  //draw and dissipate shots
  for (int i = 0; i < shots.size (); i++) {
    Shot tempShot = shots.get(i);
    tempShot.update();
    tempShot.display();
    tempShot.dissipate(i);
  }
  
  //draw the asteroids
  for (int i = 0; i < asteroids.size (); i++) {
    Asteroid tempAst = asteroids.get(i);
    tempAst.update();
    tempAst.display();


    //memory management and proper coding architecture
    if (tempAst.y > height+tempAst.w*0.5) {
      asteroids.remove(i);
    }//if close
    
    for (int j = 0; j < shots.size(); j++) {
      Shot tempShot =shots.get(j);
      tempAst.shotCollision(tempShot, tempAst, i, j);
    }
    
      if (ship.alive == true) {
      tempAst.playerCollision(ship, tempAst);
    }
    if (ship.alive == false) {
      restart();
    }
    
    
  }//for close
}//draw close

void keyPressed() {
  if (key == CODED) {

    if (keyCode == LEFT) {
      keyLeft = true;
    }
    if (keyCode == RIGHT) {
      keyRight = true;
    }
  }

  if (key == ' ') {//spacebar
    keyShoot = true;
  }
}

void keyReleased() {
  if (key == CODED) {

    if (keyCode == LEFT) {
      keyLeft = false;
    }
    if (keyCode == RIGHT) {
      keyRight = false;
    }
  }

  if (key == ' ') {//spacebar
    keyShoot = false;
  }
}

void restart() {
  asteroids.clear();
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));
  asteroids.add(new Asteroid(random(width), 0, random(2, 6)));

  //player restarts like this
  ship.x = width/2;
  ship.y = height*0.9;
  ship.velocity = new PVector(0,0);
  ship.alive = true;
}

