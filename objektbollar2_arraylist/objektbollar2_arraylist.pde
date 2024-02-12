ArrayList<Ball> balls;

void setup() {
  size(800, 600);

  balls = new ArrayList<Ball>();
}


void draw() {
  background(100);

  for (Ball currentBall : balls) {
    currentBall.update();
  }
}

void mouseClicked(){
  balls.add(new Ball(mouseX, mouseY));
}
