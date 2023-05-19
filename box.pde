class box {
  float x, y, d;

  box(float a, float b, float d) {
    x = a;
    y = b;
    this.d = d;
  }

  void display() {
    fill(188, 94, 30);
    noStroke();
    rect(x+d*3/5, y-d*5/12, 50, 100);
  }
}
