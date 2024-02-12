class Ball {

  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;

  int size;
  color c;

  Ball(float _xPos, float _yPos) {
    xPos = _xPos;
    yPos = _yPos;
    xSpeed = random(-8, 8);
    ySpeed = random(-8, 8);

    size = int(random(20, 100));
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void update() {
    move();
    bounce();
    render();
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }

  void bounce() {
    if (xPos > width || xPos < 0) {
      xSpeed = xSpeed*(-1);
      c = color(random(0, 255), random(0, 255), random(0, 255));
    }

    if (yPos > height || yPos < 0) {
      ySpeed = ySpeed*(-1);
      c = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }

  void render() {
    fill(c);
    ellipse(xPos, yPos, size, size);
  }
}
