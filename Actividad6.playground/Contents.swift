import UIKit

infix operator +++
func +++(a:Int, b:Int)->Double
{
    let numero = Double(a)
    let potencia = Double(b)
    return pow(numero, potencia)
}
4+++6
//parte 1
var coleccion = [2,5,3,4]
prefix operator |>
prefix func |> (coleccion:Array<Int>)->Array<Int>
{
return coleccion.sorted()
}
|>coleccion
//parte 2
class valoresModi
{
    var valores:[Int]
    init(VM:[Int])
    {
        self.valores = VM
    }
    subscript(index: Int)->Int{
        get{
            return valores[index]
        }
        set(valorAmulti)
        {
            valores[index] = valores[index] * valorAmulti
        }
    }
}
let vf = valoresModi(VM: coleccion)
vf[2]
vf[1]=5
coleccion
vf.valores
//:parte 3
struct Posicion{
    var posicion:CGPoint
    init(pos:CGPoint) {
        self.posicion = pos
    }
    subscript(index:Int)->CGPoint{
        get
        {
        return self.posicion
        }
        set(Vnuevo)
        {
        self.posicion = Vnuevo
        }
    }
}
var pos = Posicion(pos: CGPoint(x:5.0, y:3.0))
pos.posicion
pos.posicion = CGPoint (x:9.0, y:4.0)
pos.posicion
//parte 4
var coleccion2 = ["A":1, "B":2,"C":3]
func ExisteValor (ValorABus:String){
    guard let Siexiste = coleccion2[ValorABus] else
    {
        print("El valor buscado no existe")
        return
    }
    print("El valor \(Siexiste) si existe")
}

ExisteValor(ValorABus: "C")
//parte 5
