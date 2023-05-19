olaf oo;
snow [] ss;

int score;
int elapsedTime = 0;
boolean timeOver;
int state = 0;
boolean item;

void setup() {
  size(1000, 800);
  oo = new olaf(100, 730, 120);
  ss = new snow[50];
  for (int i=0; i<50; i++) ss[i] = new snow();
}

void draw() {
  background(174, 211, 236);
  if (state == 0) { // 1. ready to restart
    readyToStart();
  } else if (state == 1) { // 2. playing
    playing();
  } else if (state == 2) { // 3. timeover
    retry();
  }
}
void mouseReleased() {
  if (state == 0) { // 1. ready to restart
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
      state = 1;
    }
  } else if (state == 1) { // 2. playing
    if (timeOver == true) {
      state = 2;
    }
  } else if (state == 2) { // 3. timeover & Retry
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 300 - 50 && mouseY < height/2 + 300 + 50) {
      state = 0;
    }
  }
}
