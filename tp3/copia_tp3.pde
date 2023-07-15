https://youtu.be/gZqMwQ2HdDQ

PImage[] PAN = new PImage[13];
int pantalla=0;

void setup() {
  size(600, 600);
  PAN[0]=loadImage("pantalla 0.jpg");
  PAN[1]=loadImage("pantalla 1.jpg");
  PAN[2]=loadImage("pantalla 2.jpg");
  PAN[3]=loadImage("pantalla 3.jpg");
  PAN[4]=loadImage("pantalla 4.jpg");
  PAN[5]=loadImage("pantalla 5.jpg");
  PAN[6]=loadImage("pantalla 6.jpg");
  PAN[7]=loadImage("pantalla 7.jpg");
  PAN[8]=loadImage("pantalla 8.jpg");
  PAN[9]=loadImage("pantalla 9.jpg");
  PAN[10]=loadImage("pantalla 10.jpg");
  PAN[11]=loadImage("pantalla 11.jpg");
  PAN[12]=loadImage("pantalla 12.jpg");
}
void draw() {

  if (pantalla==0)
  {
    PANTALLA(0);
    textSize(30);
    fill(232, 0, random(1, 1000), random(1, 1000));
    text("programado por Juan Francisco Ferrigno 91478/9", 10, 300, 220, 220);
    boton(1, 0, 0, 600, 600);
  }
  if (pantalla==1)
  {
    PANTALLA(1);
    boton(2, 350, 500, 350, 350);
    boton(2, 0, 500, 250, 650);
  }
  if (pantalla==2)
  {
    PANTALLA(2);
    boton(6, 350, 500, 350, 350);
    boton(3, 0, 500, 250, 650);
  }
  if (pantalla==3)
  {
    PANTALLA(3);
    boton(4, 0, 500, 250, 650);
    boton(9, 350, 500, 350, 350);
  }
  if (pantalla==4)
  {
    PANTALLA(4);
    boton(10, 350, 500, 350, 350);
    boton(5, 0, 500, 250, 650);
  }
  if (pantalla==5)
  {
    PANTALLA(5);
    boton(0, 350, 500, 350, 350);
    f();
  }
  if (pantalla==6)
  {
    PANTALLA(6);
    boton(8, 350, 500, 350, 350);
    boton(7, 0, 500, 250, 650);
  }
  if (pantalla==7)
  {
    PANTALLA(7);
    boton( 8, 100, 500, 350, 500);
  }
  if (pantalla==8)
  {
    PANTALLA(8);
    boton(0, 350, 500, 350, 350);
    f();
  }
  if (pantalla==9)
  {
    PANTALLA(9);
    boton(0, 350, 500, 350, 350);
    f();
  }
  if (pantalla==10)
  {
    PANTALLA(10);
    boton(11, 0, 500, 250, 650);
    boton(12, 350, 500, 350, 350);
  }
  if (pantalla==11)
  {
    PANTALLA(11);
    boton(0, 350, 500, 350, 350);
    f();
  }
  if (pantalla==12)
  {
    PANTALLA(12);
    boton(0, 350, 500, 350, 350);
    f();
  }
}
void PANTALLA(int pan) {

  PAN[pan].resize(600, 600);
  image(PAN[pan], 0, 0)   ;
}
void boton(int pan, int x, int y, int w, int h) {

  if ( (mouseX>x) &&( mouseX<x+w) &&( mouseY>y) && (mouseY< y+h && mousePressed))
  {

    pantalla=pan;
  }
}
void f() {
  for (int x=0; x<=width; x+=10)
  {
    fill(0, 0, 0, 0);
    rect(x, 500, 500, 500);
  }
}
