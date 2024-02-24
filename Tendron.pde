public void setup() {
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw() {
  background(255);
  Cluster c = new Cluster(50, 250, 250);
  Cluster d = new Cluster(80, 350, 250);
  Cluster e = new Cluster(30, 150, 250);
  c.show();
  d.show();
  e.show();
}

public void mousePressed() {
  redraw();
}
