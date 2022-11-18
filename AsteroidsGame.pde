Spaceship joe = new Spaceship();
Star[] joem = new Star[300];
boolean f = false;
boolean u = false;
boolean c = false;
boolean k = false;
boolean y = false;
public void setup() {
  size(500, 500);

  for (int i = 0; i < joem.length; i++)
    joem[i] = new Star();
}

public void draw() {
  background(0);

  for (int i = 0; i < joem.length; i++)
    joem[i].wowza();

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
