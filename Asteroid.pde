class Asteroid extends Floater
{
  private double turnSpeed;
  public Asteroid(int n) {
    corners = n * 4;
    myColor = 255;
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*1000);
    myXspeed = (int)(Math.random()*5)-2;
    myYspeed = (int)(Math.random()*5)-2;
    myPointDirection = 0;
    turnSpeed = Math.random()*5+3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i = 0; i < corners; i++) {
      if (i < n) {
        xCorners[i] = (int)(Math.random()*10)+(i*10);
        yCorners[i] = (int)(Math.random()*10)+(i*10) - (10 * n);
      }
      if ((i < (2 * n)) && (i >= n)) {
        xCorners[i] = (10 * n) - (int)((Math.random()*10)+((i-n)*10));
        yCorners[i] = (int)(Math.random()*10)+((i-n)*10);
      }
      if ((i < (3 * n)) && (i >= (2 * n))) {
        xCorners[i] = -1*((int)(Math.random()*10)+((i-(2 * n))*10));
        yCorners[i] = (10 * n) - (int)((Math.random()*10)+((i-(2 * n))*10));
      }
      if (i >= (3 * n)) {
        xCorners[i] = (int)(Math.random()*10)+((i-(3 * n))*10) - (10 * n);
        yCorners[i] = -1*((int)(Math.random()*10)+((i-(3 * n))*10));
      }
    }
  }

  public void move() {
    super.move();
    turn(turnSpeed);
  }

  public int getX() {
    return (int)myCenterX;
  }

  public int getY() {
    return (int)myCenterY;
  }
}
