class Ball {

  PVector pos;
  PVector vel;

  int size;
  color c;

  Ball(PVector _pos) {
    pos = _pos;
    vel = new PVector(random(-8, 8), random(-8, 8));

    size = int(random(20, 100));
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void update() {
    move();
    bounce();
    checkCollision();
    render();
  }

  void move() {
    pos.add(vel);
  }

  void bounce() {
    if (pos.x > width || pos.x < 0) {
      vel.x = vel.x*(-1);
      c = color(random(0, 255), random(0, 255), random(0, 255));
    }

    if (pos.y > height || pos.y < 0) {
      vel.y = vel.y*(-1);
      c = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }

  void checkCollision() {

    for (Ball currentBall : balls) {
      if (currentBall != this) {
        if (PVector.dist(this.pos, currentBall.pos) < (this.size/2 + currentBall.size/2)) {
          makeCollision(this, currentBall);
        }
      }
    }
  }

  void render() {
    fill(c);
    ellipse(pos.x, pos.y, size, size);
  }
}