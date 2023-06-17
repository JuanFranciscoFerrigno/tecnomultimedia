https://youtu.be/wNpv3qC3phQ

PImage REFERENCIA;
int posY=40;
int posX=40;

void setup() {
  size(800, 400);
  REFERENCIA=loadImage("ejemplo.jpg");
}
void draw() {
  background(0);
  Rect();
  Ellipse();
  REFERENCIA. resize(0, 400);
  image(REFERENCIA, 0, 0)   ;
  foto();
}
void Ellipse() {
  for (int y=10; y<=height; y+=20) {

    for (int x=10; x<=width; x+=20)
    {
      noStroke();
      fill(mouseY, random(20, 100), mouseX);
      ellipse(x, y, 15, 15);
    }
  }
}
void Rect() {
  for (int y2=0; y2<=height; y2+=20) {

    for (int x2=0; x2<=width; x2+=20)
    {
      noStroke();
      fill(mouseX, random(10, 200), random(10, 200));
      rect(x2, y2, 20, 20);
    }
  }
}
void foto() {
  if ((mouseX<400)) {
    Rect();
    Ellipse();
  }
}
