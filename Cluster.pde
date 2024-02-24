public class Cluster {
  public final static int NUM_STEMS = 7;
  private Tendril[] tendrils;
  
  public Cluster(int len, int x, int y) {
    tendrils= new Tendril[NUM_STEMS];
    for (int i = 0; i < NUM_STEMS; i++) {
      tendrils[i] = new Tendril(len, Math.random()*2*Math.PI, x, y);
    }
    
    Tendril newTendril = new Tendril(len, Math.random()*2*Math.PI, x, y);
    newTendril.show();
  }
  
  public void show() {
    for (Tendril t : tendrils) {
      t.show();      
    }
  } 
}
