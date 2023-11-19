class Juego {
  constructor() {
    this.fondo=loadImage("data/camino.png")
      this.crearPersonaje();
    this.crearEnemigo();
    this.pantalla=0
  }
  dibujar() {
    this.fondo.resize(700, 600)
      image(this.fondo, 0, 0)
      this.personaje.dibujar();
    this.enemigo.dibujar();
    this.pasar();
    this.impactoDePJ();
  }
  crearPersonaje() {
    this.personaje = new Personaje(500, 340);
  }
  crearEnemigo() {
    this.enemigo = new Enemigo(0, 200);
  }
  keyPress(key) {
    this.personaje.keyPress(key)
  }
  impactoDePJ() {
    if ((this.personaje.posX>this.enemigo.posX)&&
      (this.personaje.posX<this.enemigo.posX+this.enemigo.tam2)&&
      (this.personaje.posY>this.enemigo.posY)&&
      (this.personaje.posY<this.enemigo.posY+this.enemigo.tam) ) {

      this.perder()
    }
  }
  pasar() {
    if ( (this.personaje.posX>=0) &&
      (this.personaje.posY<=700)&&
      (this.personaje.posX>=0) &&
      (this.personaje.posX<=0 )) {
        
      this.ganar()
    }
  }
  perder() {
    fill(232, 0, random(1, 1000), random(1, 1000));
    textSize(50)
      text("CAPERUCITA FUE CAPTURADA", 10, 300, 220, 220)
      this.personaje.posX = 500
      this.personaje.posY = 340
  }
  ganar() {
    
    fill(232, 0, random(1, 1000), random(1, 1000));
    textSize(50)
      text("CAPERUCITA llego CASA", 10, 300, 220, 220)
      this.personaje.posX = 500;
    this.personaje.posY = 340;
    this.personaje.tam = 60;
    this.personaje.tam2 = 60;
  }
}
