int pantalla=0;
int transparencia = 170;
boolean presionar = false;

void setup() {
  size(600, 800);
  fullScreen();
}
void draw() {
  //ESTILO DE TEXTO BASE
  background(0);
  noStroke();
  Rect();
  textSize(20);
  fill(10, 0, 0, 190);
  rect(10, 10, 1338, 745, 20);

  fill(200, 0, 0);



  if (pantalla==0)
  {
    text("0", 30, 30, 1300, 550);
    boton(0, 1, "tycctycyytcv", 15, 490, 1325, 60);
    boton(0, 1, "tycctycyytcv", 15, 560, 1325, 60);
    boton(0, 1, "tycctycyytcv", 15, 630, 1325, 60);
    boton(0, 1, "tycctycyytcv", 15, 700, 1325, 60);
  }
  if (pantalla==1)
  {
    text("1", 30, 30, 1300, 550);
    boton(1, 2, "ctttctrct", 10, 520, 100, 60);
  }
  if (pantalla==2)
  {
    text("2", 30, 30, 1300, 550);
    boton(2, 3, "cghrt", 10, 520, 100, 60);
  }
  if (pantalla==3)
  {
    text("3", 30, 30, 1300, 550);
  }
  if (pantalla==4)
  {
  }
  if (pantalla==5)
  {
  }
  if (pantalla==6)
  {
  }
  if (pantalla==7)
  {
  }
  if (pantalla==8)
  {
  }
  if (pantalla==9)
  {
  }
  if (pantalla==10)
  {
  }
  if (pantalla==11)
  {
  }
  if (pantalla==12)
  {
  }
}
void mouseClicked() {
}
