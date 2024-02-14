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

void mouseClicked() {
  balls.add(new Ball(new PVector(mouseX, mouseY)));
}


void makeCollision(Ball ball1, Ball ball2) {
  
  float A1 = 2*ball1.size/(ball1.size+ball2.size);
  float A2 = 2*ball2.size/(ball1.size+ball2.size);
  float B1 = PVector.dot(PVector.sub(ball1.vel, ball2.vel), PVector.sub(ball1.pos, ball2.pos))/PVector.sub(ball1.pos, ball2.pos).magSq();
  float B2 = PVector.dot(PVector.sub(ball2.vel, ball1.vel), PVector.sub(ball2.pos, ball1.pos))/PVector.sub(ball2.pos, ball1.pos).magSq();
  float A1B1 = A1 * B1;
  float A2B2 = A2 * B2;

  ball1.vel = PVector.sub(ball1.vel, PVector.mult(PVector.sub(ball1.pos, ball2.pos), A1B1));
  ball2.vel = PVector.sub(ball2.vel, PVector.mult(PVector.sub(ball2.pos, ball1.pos), A2B2));
  
  ball1.pos.add(ball1.vel);
  ball2.pos.add(ball2.vel);
  
}