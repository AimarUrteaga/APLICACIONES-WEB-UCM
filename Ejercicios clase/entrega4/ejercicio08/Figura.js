class Figura {
    #color="#000000"
    constructor(x, y){
        this.x=x;
        this.y=y;
    }

    pintar(){
        console.log("Nos movemos a la posición (["+this.x+"], ["+this.y+"])");
        console.log("Cogemos la pintura de color ["+this.#color+"]");
    }

    esBlanca(){
        return this.#color=="#FFFFFF";
    }
}
module.exports=Figura.pintar
let f = new Figura(3,5)
f.pintar()
console.log(f.esBlanca()); 