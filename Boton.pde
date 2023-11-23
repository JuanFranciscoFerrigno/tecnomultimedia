
void boton(int pantallaActual, int IRaPantalla, String  opcion, int x, int y, int w, int h) {
  //forma del boton
  fill(random(130, 150), 0, 0, transparencia);
  rect(x, y, w, h, 10 );
  //texto del boton
  textSize(20);
  fill(0, 0, 0);
  text(opcion, x +=7, y, w, h);
  if (pantalla==pantallaActual) {
    presionar=true;
      if ( (mouseX>x) &&( mouseX<x+w) &&( mouseY>y) && (mouseY< y+h && mouseButton==LEFT))
    {
      pantalla= IRaPantalla;
      presionar= false;
    }
  }
  // color a boton
  if ( (mouseX>x) &&( mouseX<x+w) &&( mouseY>y) && (mouseY< y+h))
  {
    transparencia+=300;
  } else {
    transparencia=150;
  }
}
/*
 text("0", 30, 30, 1300, 1550);
 boton(0, 1, "tycctycyytcv", 15, 490, 1325, 60);
 boton(0, 1, "tycctycyytcv", 15, 560, 1325, 60);
 boton(0, 1, "tycctycyytcv", 15, 630, 1325, 60);
 boton(0, 1, "tycctycyytcv", 15, 700, 1325, 60);
 */
