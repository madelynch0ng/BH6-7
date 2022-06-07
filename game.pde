void game() {
  fill(dblue, 110);
  noStroke();
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
}

void addObjects() {
  objects.add(0, new Star());

  if (frameCount% 90 ==0 ) objects.add(new EnemyA());
    if (frameCount% 30 ==0 ) objects.add(new EnemyB());
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject o = objects.get(i);
    o.act();
    o.show();
    if (o.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  text(frameRate, 10, 10);
  text( objects.size(), 10, 30);
}
void gameClicks() {
  mode = PAUSE;
}
