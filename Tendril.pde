class Tendril {
  public final static int SEG_LENGTH = 4;
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  Tendril(int len, double theta, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  
  public void show() {
    int startX = myX;
    int startY = myY;
    int endX = myX;
    int endY = myY;
    while (myNumSegments > 0) {
      myAngle += Math.random() * 0.4 - 0.2; 
      endX = startX + (int)(Math.cos(myAngle) * SEG_LENGTH);
      endY = startY + (int)(Math.sin(myAngle) * SEG_LENGTH);
      stroke((int)endX - (float)(Math.random()*500), (int)endY - (float)(Math.random()*600), (float)(Math.random()*255));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      myNumSegments--;
    }
    if (myNumSegments > 3) {
      Cluster c = new Cluster(myNumSegments/3, (int)endX, (int)endY);
      c.show();
    }
  }
}
