let aventura

function setup() {
  createCanvas(1400, 750)
  aventura = new Aventura()
}

function draw() {
aventura.dibujar()
}

function mouseClicked() {
  aventura.mouseClicked()
}
function keyPressed() {
  aventura.juego.keyPress(key);
}
