void Rect() {
  push();
  for (int y2=0; y2<=height; y2+=2) {

    for (int x2=0; x2<=width; x2+=2)
    {
      noStroke();
      fill(random(0, 70), random(0, 10), 0);
      rect(x2, y2, 20, 20);
    }
  }
  pop();
}
