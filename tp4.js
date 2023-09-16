//https://youtu.be/yB_O9ywkE3U
let I=0;

let pantalla=0;

let count=3;

let limit =70;

let c = 100;

let c2 =699;

// frog
let x = 300;
let y = 510;
let d1 = 40;
let d2 = 40;

//1
let xa = 0;
let ya = 420;
let da1 = 60;
let da2 = 130;
//2
let xa1 = 400;
let ya1 = 320;
let da11 = 60;
let da21 = 130;
//3
let xa2 = 200;
let ya2 = 220;
let da12 = 60;
let da22 = 130;
//4
let xa3 = 10;
let ya3 = 110;
let da13 = 60;
let da23 = 130;

function setup() {
  createCanvas(700, 600);
}

function draw() {
  // menu
  if (pantalla==0)
  {
    background(0, 0, 200, 900, 110)
      fill(0);
    textSize(30);
    text("hecho por Juan Francisco Ferrigno 91478/9", 70, 250);
    textSize(70);
    fill(0, 120, 120);
    text("FROG", 220, 100) ;
    rect(200, 340, 190, 62);
        textSize(22);
    text("se mueve con wasd y espacio para detenerse", 70, 550);
    textSize(70)
    fill(0, 0, 0);
    text("PLAY  ", 200, 400);

  }

  // perdiste
  if (pantalla==2)
  {
    background(250, 0, 0)
      fill(0);
    textSize(80);
    text("Perdiste", 200, 100) ;
    fill(100, 22, 10, 200);
    rect(500, 300, 100, 100);
    textSize(20);
    fill(0, 0, 0);
    text("reset", 540, 350);
  }

  // ganaste
  if (pantalla==3)
  {
    background(0, 0, 200)
      fill(0);
    textSize(80);
    text("Ganaste", 200, 100) ;
    fill(100, 22, 10, 200);
    rect(500, 300, 100, 100);
    textSize(20);
    fill(0, 0, 0);
    text("reset", 540, 350);
  }

  // game
  if (pantalla==1)
  {
    background(100);

    //calle
    fill(0, 250, 0);
    rect(0, 0, 699, c);
    fill(0, 0, 150);
    rect(0, 500, 699, 100);

    //autos
    fill(150, 50, 50);
    rect(xa++, ya, da2, da1);

    fill(150, 50, 50);
    rect(xa1++, ya1, da21, da11);

    fill(150, 50, 50);
    rect(xa2++, ya2, da22, da12);

    fill(150, 50, 50);
    rect(xa3++, ya3, da23, da13);

    //frog
    fill(0, 250, 200);
    rect(x, y, d1, d2)
      fill(0);
    textSize(40);
    text("vidas:", 5, 60) ;
    text(str(count), 110, 60) ;
  }
  if (key=="d")
  {
    x++;
  }
  if (key=="s")
  {
    y++;
  }
  if (key=="w")
  {
    y--;
  }
  if (key=="a")
  {
    x--;
  }

  if ( (x>=0) && (x<=700) && (y>=0) && (y<=100 ))
  {
    pantalla=3;
    x = 300;
    y = 510;
    d1 = 40;
    d2 = 40;
  }

  if ( (x<xa) && (x+d1>xa+da1) && (y<ya) && (y+d2>ya+da2)) {
    fill(150, 50, 50);
    rect(400, 500, 300, 300);
  }

  if (xa > height+limit) {

    xa = -limit;
  }
  if (xa1 > height+limit) {

    xa1 = -limit;
  }
  if (xa2 > height+limit) {

    xa2 = -limit;
  }
  if (xa3 > height+limit) {

    xa3 = -limit;
  }
  if ((x>xa)&&(x<xa+da2)&&(y>ya)&&(y<ya+da1) )
  {
    count--;
    x = 300;
    y = 510;
    d1 = 40;
    d2 = 40;
  }
  if ((x>xa1)&&(x<xa1+da21)&&(y>ya1)&&(y<ya1+da11) )
  {
    count--;
    x = 300;
    y = 510;
    d1 = 40;
    d2 = 40;
  }
  if ((x>xa2)&&(x<xa2+da22)&&(y>ya2)&&(y<ya2+da12) )
  {
    count--;
    x = 300;
    y = 510;
    d1 = 40;
    d2 = 40;
  }
  if ((x>xa3)&&(x<xa3+da23)&&(y>ya3)&&(y<ya3+da13) )
  {
    count--;
    x = 300;
    y = 510;
    d1 = 40;
    d2 = 40;
  }
  if (count<1) {
    pantalla=2;
    x = 300;
    y = 550;
    d1 = 40;
    d2 = 40;
    count=3;
  }
}

function mousePressed() {
  //mouseX,mouseY
  if ( (mouseX>200) && (mouseX<385) && (mouseY>350) && (mouseY<400 )) {
    pantalla=1;
  }
  if ( (mouseX>=500) && (mouseX<=600) && (mouseY>=300) && (mouseY<=400 )) {
    pantalla= 0
  }
}
