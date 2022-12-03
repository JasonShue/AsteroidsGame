class Star
{
  private int myX;
  private int myY;
  private color c;
  public Star() {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
    c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void wowza() {
    fill(c);
    ellipse(myX, myY, 5, 5);
  }
}
