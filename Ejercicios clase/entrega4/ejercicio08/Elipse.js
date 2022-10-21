var fig = require("./Figura.js")

class Elipse extends Figura{
    constructor(x, y, rh, rv){
        super(x, y);//stend
        this.rh=rh;
        this.rv=rv;
    }
    pintar(){
        super.pintar()
        console.log("Nos movemos a la posición (["+this.rh+"], ["+this.rv+"}])");
    }
}


let e = new Elipse(1,2,3,4)
e.pintar()