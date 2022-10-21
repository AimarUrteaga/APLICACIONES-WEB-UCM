class Figura {
  #color = '#000000'
  constructor(x, y) {
    this.x = x
    this.y = y
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
console.log(
  `-------------------------Prueba elipse----------------------------------`
)
let elip = new Elipse(7, 8, 6, 4)
elip.pintar()
console.log(elip.esBlanca())
console.log(
  `-------------------------Prueba Circulo----------------------------------`
)
let circ = new Circulo(5, 3, 1)
circ.pintar()
console.log(circ.esBlanca())
