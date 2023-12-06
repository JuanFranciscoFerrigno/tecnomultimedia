let juegou;

function setup() {
  createCanvas(700, 600);

  juegou =new Juego();
}
function draw() {
  background(0);
  juegou.dibujar();
   
}
function keyPressed(){
  juegou.keyPress(key);
}
