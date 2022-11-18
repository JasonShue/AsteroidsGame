class Star
{
  private int myX;
  private int myY;
  private color c;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void wowza() {
    fill(c);
    ellipse(myX, myY, 5, 5);
  }
}
