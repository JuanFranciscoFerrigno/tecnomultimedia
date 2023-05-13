//Debe haber al menos 3 pantallas, donde cada pantalla posea una imagen y un texto
//El texto en la pantalla debe utilizar una fuente de Processing y tener algún tipo de animación (movimiento, fade, escalado, etc)
//La transición entre una pantalla y otra debe ser automática por tiempo.
//Al finalizar debe haber un botón que permita reiniciar la misma.

int x=660;
int y=250;
int z=0;
int pantalla=0;
int count=0;
int posx=230;
int posY=600;
PImage pala0;
PImage pala1;
PImage pala2;

String texto0="HOLA, SOY LA PALA (de jardineria)";
String texto1="y voy a decirles como funciono";
String texto2="La pieza metálica tiene un borde superior plano para ejercer fuerza hacia la parte inferior con el pie.";

PFont fuente;

  void setup() {
  size(640, 480);
  background(0);
  pala0=loadImage("palita.jpg");
  pala1=loadImage("palitas.jpg");
  pala2=loadImage("accion.jpg");
  fuente=loadFont("FUENTE.vlw");
  textFont(fuente);
}

void draw() {
  println(frameCount);
  if ((frameCount>z))
  {
    pantalla=0;
    if (pantalla==0) {
      background(110, 22, 0);
      pala0. resize(640, 480);
      image(pala0,0,0)   ;
      
      textSize(22);
      text(texto0, 40, posx, 400, 500);
      posx--;
    }
  }

  if ((frameCount>y))
  {
    pantalla=1;
    if (pantalla==1) {
      background(0, 70, 0);
      pala1. resize(640, 480);
      image(pala1, 0, 0);
      
      if ( (posY <= 100  ) || (  posY >= 300) ) {

        fill(100, 400, 1100, 200);
      } else {

        fill(232, 0, 0, 200);
      }
      textSize(22);
      text(texto1, posY, 200, 400, 500);
      posY--;
    }
  }
  if ((frameCount>x)) {
    pantalla=2;
    if (pantalla==2) {
      background(0, 70, 110);
      image(pala2, 60, 10);
      pala2. resize(500, 350);
      fill(0, 1000, 1000, 50);
      rect(135, 450, 250, -50);
      fill(400, 300, posx, posY);

      textSize(22);
      text(texto2, posY, 120, 200, 300);
      posY--;
    }
  }
}

void mousePressed()
{
  if ( (mouseX>135) && (mouseX<385) && (mouseY>400) && (mouseY< 450))
  {
    frameCount=0;

    println("HOLA");
  }
}
