class Figura {
  #color = '#000000'
  constructor(x, y) {
    this.x = x
    this.y = y
  }
  get color(){
    return this.#color
  }

  set color(color){
    if (/#[A-F0-9]{6}/.test(color)){
      this.#color=color
    }
  }

  pintar() {
    console.log(
      'Nos movemos a la posición ([' + this.x + '], [' + this.y + '])'
    )
    console.log('Cogemos la pintura de color [' + this.#color + ']')
  }

  esBlanca() {
    return this.#color == '#FFFFFF'
  }
}

class Elipse extends Figura {
  constructor(x, y, rh, rv) {
    super(x, y)
    this.rh = rh
    this.rv = rv
  }
  pintar() {
    super.pintar()
    console.log(`Pintamos elipse de radios [${this.rh}] y [${this.rv}]`)
  }
}

class Circulo extends Elipse {
  constructor(x, y, r) {
    super(x, y, r, r)
  }
}

console.log(
  `-------------------------Prueba figura----------------------------------`
)
console.log('Prueba figura')
let fig = new Figura(5, 6)
fig.pintar()
console.log(fig.esBlanca())
fig.color="#FFFFF"
console.log(fig.color)
fig.color="FFFFFF"
console.log(fig.color)
fig.color="#FFFFFF"
console.log(fig.color)
console.log(fig.esBlanca())
console.log(
  `-------------------------Prueba elipse----------------------------------`
)
let elip = new Elipse(7, 8, 6, 4)
elip.pintar()
console.log(elip.esBlanca())
elip.color="#FFFFFF"
console.log(elip.color)
console.log(elip.esBlanca())
console.log(
  `-------------------------Prueba Circulo----------------------------------`
)
let circ = new Circulo(5, 3, 1)
circ.pintar()
console.log(circ.esBlanca())