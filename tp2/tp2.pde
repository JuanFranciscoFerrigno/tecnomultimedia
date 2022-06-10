//https://www.youtube.com/watch?v=_wSM5bEZc8Q

float y = 50;
float velocidad = 7.0;
float radio = 55;
int circleX;
int circleY;
int cant;
float colorCirculo = 0;
int rojo;
int verde;
int azul;

void setup() {
  size (700, 600);
  circleX = 0;
  circleY = 0;
  cant = 10;
  rojo = 0;
  verde = 0;
  azul = 0;
  stroke(100,0,100);
  strokeWeight(800);
  ellipseMode (RADIUS);
}

void draw() {
  delay(19);
  colorCirculo = random(0,3);
  fill(rojo,verde,azul);
  ellipse(mouseX,mouseY,y ,y); y = y + velocidad;
//(mouseX,mouseY(width/2,height/2
  if (colorCirculo >=0 && colorCirculo <= 1) {
    rojo = 200;
    verde = 0;
    azul = 100;
}
  
  if (colorCirculo >1 && colorCirculo < 2) {
    rojo = 220;
    verde = 100;
    azul = 330;
}
  
  if (colorCirculo >= 2 && colorCirculo <= 3) {
    rojo = 50;
    verde = 150;
    azul = 200;
  }
  
  if (y > height+radio) {

  y = -radio;

  }
    for (int k=0; k < cant; k=k+1){
    cant += int(random(0,cant));
    circle(width/2,height/2,cant); 
    
  }
}
