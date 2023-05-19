void collipse() {
  float x = 500; // the x and y values of your box
  float y = 800;
  int d = 120;
  
  float rectX = x + d * 3 / 5;
  float rectY = y - d * 5 / 12;
  float rectWidth = 50;
  float rectHeight = 100;

  for (int i = 0; i < ss.length; i++) {
    if (ss[i].x >= rectX && ss[i].x <= rectX + rectWidth &&
        ss[i].y >= rectY - rectHeight && ss[i].y <= rectY) {
      score += 1;
      ss[i].y = -200;
      println("score: " + score);
    }
  }
}
