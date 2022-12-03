Spaceship joe = new Spaceship();
Star[] joem = new Star[500];
ArrayList <Asteroid> fellas = new ArrayList <Asteroid>();
boolean f = false;
boolean u = false;
boolean c = false;
boolean k = false;
boolean y = false;
public void setup() {
  size(1000, 1000);
  for (int i = 0; i < joem.length; i++)
    joem[i] = new Star();
  for(int i = 0; i < 10; i++){
    fellas.add(new Asteroid());
}
}

public void draw() {
  background(0);

  for (int i = 0; i < joem.length; i++)
    joem[i].wowza(); //star stuff done

  joe.show();
  joe.move();
  if (f == true) {
    joe.hyperspace();
    f = false;
  }
  if (u == true) {
    joe.turn(-4);
  }
  if (c == true) {
    joe.turn(4);
  }
  if (k == true) {
    joe.accelerate(0.2);
  }
  if (y == true) {
    joe.accelerate(-0.2);
  }  // spaceship stuff done
  
  for(int i = 0; i < fellas.size(); i++){
    fellas.get(i).show();
    fellas.get(i).move();
    float pow = dist((float)joe.getX(), (float)joe.getY(), (float)fellas.get(i).getX(), (float)fellas.get(i).getY()); 
    if(pow < 30)
      fellas.remove(i);
  }
  
  stroke(0);
}

  public void keyPressed() {
    if (key == 'j')
      f = true;
    if (key == 'a')
      u = true;
    if (key == 'd')
      c = true;
    if (key == 'w')
      k = true;
    if (key == 's')
      y = true;
  }

  public void keyReleased() {
    if (key == 'j')
      f = false;
    if (key == 'a')
      u = false;
    if (key == 'd')
      c = false;
    if (key == 'w')
      k = false;
    if (key == 's')
      y = false;
  }
