import UIKit

//parte1
var costo_referencia : [Float] = [8.3, 10.5, 9.9]
//parte 2
    func impuesto( data:[Float] ) -> [Float] {
        var impuestoagregado:[Float] = []
        for numero:Float in data
        {
            impuestoagregado.append(numero * 0.16 + numero)
        }
        return impuestoagregado
    }
    let coneliva = impuesto(data: costo_referencia)
    print("Costo Con iva: \(coneliva)")
//parte 3
func sumaTres(agrega2val:(Int, Int), handler:Int) -> Int
{
    return (agrega2val.0 + agrega2val.1 + handler)
}
print("valores agregados \(sumaTres(agrega2val:(15, 45), handler: 65))")
//parte 4
var val1 = 5
var val2 = 10
func intercambiarVal<x>(a:x, b:x)
{
    let manejador = val1
    val1 = val2
    val2 = manejador
}
intercambiarVal(a: val1, b: val2)
print("PRIMER VALOR\(val1)")
print("SEGUNDO VALOR \(val2)")
//parte 5
var datos = [3,7,9,2]
func Transformar(arreglo:[Int]) -> [Int]
{
    return arreglo
}
func tranformandolo (arreglo:[Int]) -> [Int]
{
    var resultadofinal:[Int] = []
    for Transformar in arreglo
    {
        resultadofinal.append (Transformar * 2)
    }
    return resultadofinal
}
print(Transformar(arreglo:datos))
print(tranformandolo(arreglo: datos))
//parte 6
var valores : [Float] = [4.2, 5.3, 8.2, 4.5]
var impuestos = valores.map {impuesto(data: [$0])}
print(valores )
print(impuestos)
//parte 7
var precio_menor = impuestos.filter{a in a > 6.0}
print(precio_menor)

