void time() {
  elapsedTime++;
  if (elapsedTime > 1800) {
    timeOver = true;
    background(255, 0, 0);
    textAlign(CENTER, CENTER);
    fill(0);
    text("TIME OVER", width / 2, height / 2);
    text("Score: " + int(score), width / 2, (height + 100) / 2);
    retry();
  }
}

void retry() {
  fill(255);
  rectMode(CENTER);
  rect(width/2, (height/2)+300, 200, 50);
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Retry", width/2, height/2+300);
}
