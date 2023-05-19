class snow {
  float x, y, r;
  float ySpeed;
  PShape snowFlake;

  snow() {
    x = random(0, width);
    y = random(0, height);
    ySpeed = random(3, 6);
    r = random(20, 50);
    snowFlake = loadShape("snowFlake0.svg");
  }

  snow(float a, float b) {
    x = a;
    y = b;
    ySpeed = random(3, 6);
    r = random(20, 50);
    snowFlake = loadShape("snowFlake0.svg");
  }

  void display() {
    if (elapsedTime > 120) {
      smooth();
      imageMode(CENTER);
      shape(snowFlake, x, y, r, r);
    }
  }
  void fall() {
    y += ySpeed;
    if (y > height) {
      y = 0;
      x = random(0, width);
    }
  }
}
