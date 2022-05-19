
PImage poster;

int pantalla=0;

int cuadradoAzul=100;
int cuadradoRojo=100;
int cuadradoVerde=400;
int posY=600;
String texto=
"Robert Pattinso como Batman\n"+
"Paul Dano como Acertijo\n"+
"Zoë Kravitz como Catwoman\n"+
"Jeffrey Wright como el Detective Gordon\n";

void setup(){
  size(800,600);

}

void draw(){
  if(pantalla==0){
  
    background(0);
    
    fill(cuadradoRojo,cuadradoVerde,cuadradoAzul,100);
    rect(100,102,100,100);
    fill(100,400,00,100);
    textSize(100);
    text("?",130,100,220,220);
    
    fill(100,22,10,200);
    triangle(500,300,525,300,500,240);
    triangle(600,300,575,300,600,240);
    rect(500,300,100,100);
    
    
    
    textSize(20);
  
    if ( (posY <= 100  ) || (  posY >= 300) ) { 
     
      fill(100,400,00,200);//verde
     
    } else {
      
      fill(232,0,0,200);//rojo
    
    }
    text(texto,posY,200,400,500);
    posY--;
  }
  if(pantalla==1){
    background(0);
    poster=loadImage("The_Batman-543465953-large.jpg");
    poster. resize(600,700);
    image(poster,200,10);
    textSize(20);
    fill(300,50,30,900);
    text("Música: Michael Giacchino\n"+
    "Vestuario: Jacqueline Durran\n",450,500,3000,3000);
    text("Dirección: Matt Reeves\n"+ 
    "Guion: Matt Reeves y Peter Craig\n",30,500,3000,3000);
    
  }
    
}

void mousePressed(){
  //mouseX,mouseY  
  if( (mouseX>=100) && (mouseX<=200) && (mouseY>=102) && (mouseY<=202 )||(mouseX>=500) && (mouseX<=600) && (mouseY>=300) && (mouseY<=400 ))
  {
    pantalla=1;
  
  }

}
