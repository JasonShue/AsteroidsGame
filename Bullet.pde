class Bullet extends Floater {
  public Bullet(Spaceship joe) {
    myCenterX = joe.getX();
    myCenterY = joe.getY();
    myXspeed = joe.getXspeed();
    myYspeed = joe.getYspeed();
    myPointDirection = joe.getPointDirection();
    accelerate(8.0);
  }
  public void show() {
    fill(255, 0, 0);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  
  public int getX(){
    return (int)myCenterX;
  }
  
  public int getY(){
    return (int)myCenterY;
  }
}
