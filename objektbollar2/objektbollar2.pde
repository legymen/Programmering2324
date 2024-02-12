Ball boll1;
Ball boll2;
Ball boll3;
Ball boll4;

void setup() {
  size(800, 600);
  
  boll1 = new Ball();
  boll2 = new Ball();
  boll3 = new Ball();
  boll4 = new Ball();
}


void draw() {
  background(100);
  
  boll1.update();
  boll2.update();
  boll3.update();
  boll4.update();
  
}
