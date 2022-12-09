Spaceship joe = new Spaceship();
Star[] joem = new Star[500];
ArrayList <Asteroid> fellas = new ArrayList <Asteroid>();
ArrayList <Bullet> zoomers = new ArrayList <Bullet>();
boolean f = false;
boolean u = false;
boolean c = false;
boolean k = false;
boolean y = false;
boolean s = false;

public void setup() {
  size(1000, 1000);
  for (int i = 0; i < joem.length; i++)
    joem[i] = new Star();
  for (int i = 0; i < 10; i++)
    fellas.add(new Asteroid(4));
}

public void draw() {
  background(0);

  for (int i = 0; i < joem.length; i++)
    joem[i].wowza(); //star stuff done

  for (int i = 0; i < zoomers.size(); i++) {
    zoomers.get(i).show();
    zoomers.get(i).move();
    for (int j = 0; j < fellas.size(); j++) {
      float bop = dist((float)zoomers.get(i).getX(), (float)zoomers.get(i).getY(), (float)fellas.get(j).getX(), (float)fellas.get(j).getY());
      if (bop < 30) {
        fellas.remove(j);
        zoomers.remove(i);
        break;
      }
    }
  }

  if (s == true)
    if (frameCount % 3 == 0)
      zoomers.add(new Bullet(joe));

  joe.show();
  joe.move();
  if (f == true) {
    joe.hyperspace();
    f = false;
  }
  if (u == true)
    joe.turn(-4);
  if (c == true)
    joe.turn(4);
  if (k == true)
    joe.accelerate(0.2);
  if (y == true)
    joe.accelerate(-0.2);
  // spaceship stuff done

  for (int i = 0; i < fellas.size(); i++) {
    fellas.get(i).show();
    fellas.get(i).move();
    float pow = dist((float)joe.getX(), (float)joe.getY(), (float)fellas.get(i).getX(), (float)fellas.get(i).getY());
    if (pow < 30)
      fellas.remove(i);
  }
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
  if (key == ' ')
    s = true;
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
  if (key == ' ')
    s = false;
}
