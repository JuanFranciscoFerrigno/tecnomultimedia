//CONSIGNA: crear una aventura gráfica al estilo de los viejos cuentos "Elije tu propia aventura"
//La aventura deberá poseer:
//La historia debe poseer al menos 12 pantallas y 3 finales diferentes. Debe estar presente el flujo principal del cuento/novela seleccionado/a.
//Cada pantalla debe tener: Texto narrativo, imagen de la historia y uno o mas zonas de acción para avanzar con la historia
//Al llegar a cualquiera de los finales, se debe permitir volver al inicio y comenzar nuevamente.
//Una pantalla de créditos con los datos del alumno y el autor de la obra.

//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//Ciclos FOR
//Eventos (mouse y/o teclado): modificación de variables.
//Algunas funciones matemáticas: dist(), map(), random();



PImage[] PAN = new PImage[12];
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
  //PAN[12]=loadImage("pantalla 12.jpg");
}
void draw() {
  background(0);
  if (pantalla==0)
  {
    PANTALLA(0, 0);
    textSize(30);
    text("programado por Juan Francisco Ferrigno 91478/9", 10, 300, 220, 220);
    boton(4,150,150,150,150);
  }
  if (pantalla==1)
  {
    PANTALLA(1, 1);
  }
  if (pantalla==2)
  {
    PANTALLA(2, 2);
  }
  if (pantalla==3)
  {
    PANTALLA(3, 3);
  }
  if (pantalla==4)
  {
    PANTALLA(4, 4);
  }
  if (pantalla==5)
  {
    PANTALLA(5, 5);
  }
  if (pantalla==6)
  {
    PANTALLA(6, 6);
  }
  if (pantalla==7)
  {
    PANTALLA(7, 7);
  }
  if (pantalla==8)
  {
    PANTALLA(8, 8);
  }
  if (pantalla==9)
  {
    PANTALLA(9, 9);
  }
  if (pantalla==10)
  {
    PANTALLA(10, 10);
  }
  if (pantalla==11)
  {
    PANTALLA(11, 11);
  }
  if (pantalla==12)
  {
    PANTALLA(12, 12);
  }
}
void PANTALLA(int pan, int panN) {

  PAN[pan]. resize(600, 600);
  image(PAN[panN], 0, 0)   ;
}
void boton(int pan,int x,int y,int w,int h) {

  if ( (mouseX>x) && (mouseX<x+w) && (mouseY>y) && (mouseY< y+h && mousePressed))
  {
    //derecha(mouseX>x) && (mouseX<x+w) && (mouseY>y) && (mouseY< y+h && mousePressed)
    //izquierda (mouseX>x) && (mouseX<x+w) && (mouseY>y) && (mouseY< y+h && mousePressed)
    //reinicio(mouseX>x) && (mouseX<x+w) && (mouseY>y) && (mouseY< y+h && mousePressed)
    //(mouseX>x) && (mouseX<x+w) && (mouseY>y) && (mouseY< y+h && mousePressed)
    pantalla=pan;
  }
}
