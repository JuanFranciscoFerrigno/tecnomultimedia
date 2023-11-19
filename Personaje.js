class Personaje {
  constructor(posX, posY) {
    this.posX=posX
      this.posY=posY
      this.miColor= color(255, 0, 0)
      this.tam=60
      this.tam2=60
      this.roja=loadImage("data/roja.jpg")
  }
  dibujar() {
      this.roja.resize(this.tam,this.tam2)
      image(this.roja,this.posY,this.posX)
  }
  keyPress() {
    if (key=="d")
    {
      this.moverDer();
    }
    if (key=="s")
    {
      this.moverAba();
    }
    if (key=="w")
    {
      this.moverArri();
    }
    if (key=="a")
    {
      this.moverIz();
    }
  }
  moverDer() {
    this.posY +=20;
  }
  moverIz() {
    this.posY -=20;
  }
  moverArri() {
    this.posX -=20;
  }
  moverAba() {
    this.posX +=20;
  }
}
