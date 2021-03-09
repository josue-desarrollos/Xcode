import UIKit

class Persona{

    func Saludar(nombre:String) -> String{
        return "Mucho gusto " + nombre
    }

    func Caminar(pasos:Int) -> String{
        return "Caminaste \(pasos) pasos"
    }
}
var per = Persona()
print(per.Saludar(nombre:"Josue"))
print(per.Caminar(pasos:8))

struct Pantalla{
    var ancho = 0
    var alto = 0

    init(ancho:Int,alto:Int)
    {
        self.ancho = ancho
        self.alto = alto
    }
}

var pant = Pantalla(ancho:255,alto:390)
print("el tamano de la pantalla es \(pant.ancho) x \(pant.alto)")

extension Int {
    var horas:Int
    {
        return self*60*60
    }
}
print(1.horas)
extension String{
    func num() -> Int{
        switch(self){
            case "Domingo":
                return 1
            case "Lunes":
                return 2
            case "Martes":
                return 3
            case "Miercoles":
                return 4
            case "Jueves":
                return 5
            case "Viernes":
                return 6
            case "Sabado":
                return 7
            default:
                return 0
        }
    }
}
print("Jueves".num())

var existe:Int?
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
//la variable anterior es a como marca Canvas
existe = dias["DF"]
print(existe)
