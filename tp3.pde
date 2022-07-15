//https://youtu.be/MBoWEftC9i8

int oy;
int ox;
int TAM;
int ventana;
int click =0;
int count=0;
int posY=600;
String texto="Creador y programador: Juan Francisco Ferrigno\n"+
"Direcion: Juan Francisco Ferrigno\n"+
"Mente creativa: Juan Francisco Ferrigno\n"+
"."+
"gracias por llegar a ver esto con esta velocidad"
;
int pantalla=0;



void setup(){
  size(500,600);
  ventana =0;
  frameRate(7);
}

void draw(){
  if(pantalla==0)
{
  background(0);
  
  fill(111,111,111);
  textSize(60);
  text("CLICK \n"+" THE\n"+" RECT",150,110);
  
  textSize(20);
  fill(250,0,0);
  textSize(50);
  text("PLAY  ",200,400);
  
  textSize(50);
  text("CREDITOS",135,450);
  
 
  fill(0,1000,1000,50);
  rect(135,400,250,-50);
  rect(135,450,250,-50);
}
   if(pantalla==1)
     {
     background(12);
     textSize(20);
     fill(200);
     text(texto,20,posY,600,600);
     posY--;
     }
   if(pantalla==2)
     {
     if(count<15){
   
      background(0);
  
      textSize(40);
      text(str(count),240,100);
      if (click==1){
      for (int k=0; k < TAM; k=k+1){
      fill(random(100,200),random(100,200),random(100,200));
      rect(ox,oy,k,k);    
      }
      click=0;
      }
      else{
             if((ventana +100>=frameCount)||(ventana==0))
              {
                 ox= int(random(100,350));
                 oy=int(random(100,350));
                 TAM =int(random(50,200));
                 ventana= frameCount;
                 fill(111,111,111);
                 rect(ox,oy,TAM,TAM);
              }
              else
              { 
                fill(111,111,111);
                rect(ox,oy,TAM,TAM);
              }
         }    
  }  
  
  else{
    background(0);
      textSize(40);
      text("GANASTE",200,100);
  }
  }
  }
  
void mousePressed()
