class Asteroid extends Floater
{
  private double turnSpeed;
  public Asteroid() {
    corners = 12;
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
      if (i < 3) {
        xCorners[i] = (int)(Math.random()*10)+(i*10);
        yCorners[i] = (int)(Math.random()*10)+(i*10) - 30;
        System.out.println("Q1: " + xCorners[i] + ", " + yCorners[i]);
      }
      if ((i < 6) && (i >= 3)) {
        xCorners[i] = 30 - (int)((Math.random()*10)+((i-3)*10));
        yCorners[i] = (int)(Math.random()*10)+((i-3)*10);
        System.out.println("Q2: " + xCorners[i] + ", " + yCorners[i]);
      }
      if ((i < 9) && (i >= 6)) {
        xCorners[i] = -1*((int)(Math.random()*10)+((i-6)*10));
        yCorners[i] = 30 - (int)((Math.random()*10)+((i-6)*10));
        System.out.println("Q3: " + xCorners[i] + ", " + yCorners[i]);
      }
      if (i >= 9) {
        xCorners[i] = (int)(Math.random()*10)+((i-9)*10) - 30;
        yCorners[i] = -1*((int)(Math.random()*10)+((i-9)*10));
        System.out.println("Q4: " + xCorners[i] + ", " + yCorners[i]);
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

