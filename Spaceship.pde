class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 14;
    xCorners = new int[]{-14, -14, 10, 10, -4, 4, 2, 8, -1, -4, -1, 8, 2, 4};
    yCorners = new int[]{6, -6, -3, 3, 2, 2, 9, 10, 13, -2, -13, -10, -9, -2};
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void show() {
    fill(245, 136, 52);

    translate((float)myCenterX, (float)myCenterY);

    float dRadians = (float)(myPointDirection*(Math.PI/180));

    rotate(dRadians);

    beginShape();
    vertex(xCorners[4], yCorners[4]);
    vertex(xCorners[5], yCorners[5]);
    vertex(xCorners[6], yCorners[6]);
    vertex(xCorners[7], yCorners[7]);
    vertex(xCorners[8], yCorners[8]);
    endShape(CLOSE);  //top wing

    beginShape();
    vertex(xCorners[9], yCorners[9]);
    vertex(xCorners[10], yCorners[10]);
    vertex(xCorners[11], yCorners[11]);
    vertex(xCorners[12], yCorners[12]);
    vertex(xCorners[13], yCorners[13]);
    endShape(CLOSE); //bottom wing

    fill(175);
    quad(xCorners[0], yCorners[0], xCorners[1], yCorners[1], xCorners[2], yCorners[2], xCorners[3], yCorners[3]);// core

    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
  public void hyperspace(){
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
}
