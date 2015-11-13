//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)

    }
    
    func cambioDeVelocidad()-> (actual : Int, velocidadEnCadena : String){
        if velocidad == .Apagado{
            velocidad = .VelocidadBaja
            return (actual : velocidad.rawValue, velocidadEnCadena : "Velocidad Baja")
        }
        else if velocidad == .VelocidadBaja{
            velocidad = .VelocidadMedia
            return (actual : velocidad.rawValue, velocidadEnCadena : "Velocidad Media")
        }
        else if velocidad == .VelocidadMedia{
            velocidad = .VelocidadAlta
            return (actual : velocidad.rawValue, velocidadEnCadena : "Velocidad Alta")
        }
        else{
            velocidad = .Apagado
            return (actual : velocidad.rawValue, velocidadEnCadena : "Apagado")
        }
        
    }
}

var auto = Auto()
for var i = 0; i < 20; i++ {
  print(auto.cambioDeVelocidad())
}
