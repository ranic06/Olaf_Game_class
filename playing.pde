void playing() {
  background(174, 211, 236);
  //score text
  fill(0);
  textSize(32);
  textAlign(LEFT);
  text("Score:" + int(score), 20, 40);
  oo.display();
  oo.move();
  for (int i=0; i<50; i++) {
    ss[i].display();
    ss[i].fall();
  }
  time();
  collipse();
}
