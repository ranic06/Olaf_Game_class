class olaf {
  float x, y, d;
  int e;
  float speed = 5;
  box bb;

  olaf(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
    bb = new box(500, 800, 120);
  }

  void display() {
    e++;
    strokeWeight(1); //leg
    stroke(0);
    fill(255);
    quad(x-d*1/20, y+d*2/10, x-d*3/10, y+d*2/10, x-d*3/10, y+d*5/10, x-d*1/10, y+d*5/10);
    quad(x+d*1/20, y+d*2/10, x+d*3/10, y+d*2/10, x+d*3/10, y+d*5/10, x+d*1/10, y+d*5/10);

    stroke(0); //body
    fill(255);
    ellipse(x, y, d, d*4/5);
    ellipse(x, y-d/2, d*3/5, d*1/2);
    ellipse(x, y-d, d*3/4, d*7/8);

    fill(255, 127, 0); //nose
    arc(x+d/5, y-d, d/8, d/8, PI/2, PI*3/2);
    triangle(x+d/5, y-d*34/32, x+d/5, y-d*30/32, x+d*2/3, y-d);
    stroke(255, 127, 0);
    line(x+d/5, y-d*34/32, x+d/5, y-d*30/32);
    stroke(255, 0, 0);
    line(x+d*2/7, y-d*31/32, x+d*2/7, y-d*33/32);
    line(x+d*3/14, y-d*30/32, x+d*3/14, y-d*32/32);
    line(x+d*6/14, y-d*31/32, x+d*6/14, y-d*33/32);
    line(x+d*5/14, y-d*31/32, x+d*5/14, y-d*32/32);

    if ((e%120)<60) { //eyes
      fill(255);
      stroke(0);
      ellipse(x+d*7/24, y-d*37/32, d/7, d/6);
      ellipse(x+d/8, y-d*37/32, d/7, d/6);
      fill(0);
      ellipse(x+d*7/24, y-d*36/32, d/10, d/10);
      ellipse(x+d/8, y-d*36/32, d/10, d/10);
      fill(255);
      circle(x+d*15/48, y-d*36/32, d/30);
      circle(x+d*7/48, y-d*36/32, d/30);
    } else {
      stroke(0);
      strokeWeight(2);
      line(x+d*6/24, y-d*36/32, x+d*8/24, y-d*36/32);
      line(x+d*2/24, y-d*36/32, x+d*4/24, y-d*36/32);
    }

    strokeWeight(3); //eyelashs
    stroke(0);
    noFill();
    arc(x+d*7/24, y-d*37/32, d/7, d/6, PI, PI*2);
    arc(x+d/8, y-d*37/32, d/7, d/6, PI, PI*2);

    arc(x+d/8, y-d*39/32, d/6, d/7, PI, PI*5/3); //eyebrows
    arc(x+d*7/24, y-d*39/32, d/6, d/7, PI*8/6, PI*11/6);

    strokeWeight(1); //mouse
    fill(62, 197, 241);
    stroke(255);
    arc(x+d/6, y-d*5/6, d/3, d/7, -PI*2/18, PI*19/18);
    fill(255);
    stroke(0);
    quad(x+d/6, y-d*9/12, x+d*3/12, y-d*9/12, x+d*3/12, y-d*5/6, x+d/6, y-d*5/6);
    line(x+d*5/24, y-d*9/12, x+d*5/24, y-d*39/48);

    strokeWeight(4); //hair
    stroke(150, 75, 0);
    line(x, y-d*13/8, x, y-d*11/8);
    line(x-d/16, y-d*13/8, x, y-d*11/8 );
    line(x+d/16, y-d*13/8, x, y-d*11/8);

    strokeWeight(3); //buttons
    fill(0);
    stroke(0);
    circle(x+d/8, y-d/2, d/10);
    circle(x+d/5, y-d/8, d/10);
    circle(x+d/4, y+d/7, d/10);

    strokeWeight(8); //hand
    stroke(150, 75, 0);
    line(x-d/10, y-d/2, x+d/2, y);
    line(x+d*7/24, y-d/2, x+d*5/8, y);

    if (dist(x, y, bb.x, bb.y) <= 75) {
      bb.x = x;
      bb.y = y;
      item = true;
    }
    bb.display();
  }

  void move() {
    if (keyPressed) {
      if (key == 'a') {
        x-= speed;
      } else if (key == 'd') {
        x += speed;
      }
      if (item) {
        bb.x = x;
        bb.y = y;
      }
    }
  }
}
