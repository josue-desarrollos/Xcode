import Darwin

var val = [3,6,9,2,4,1]
for val in val{
  if val<5{
    print(val)
  }
}
var L = 0
func suma(i:Int, q:Int)-> Int{
    L = i + q;
    return L
}
print(L)
suma(i:2,q:4)
func potencia(i:Float, q:Float)-> Float{
    let x:Float = pow(i,q)
    return x
}
potencia(i:4,q:3)
enum meses
{
 case Enero
 case Febrero
 case Marzo
 case Abril
 case Mayo
 case Junio
 case Julio
 case Agosto
 case Septiembre
 case Octubre
 case Noviembre
 case Diciembre
}

func numeroMes(meses:meses)-> meses{
 switch meses{
 case .Enero:
        print(1)
 case .Febrero:
        print(2)
 case .Marzo:
        print(3)
 case .Abril:
        print(4)
 case .Mayo:
        print(5)
 case .Junio:
        print(6)
 case .Julio:
        print(7)
 case .Agosto:
        print(8)
 case .Septiembre:
        print(9)
 case .Octubre:
        print(10)
 case .Noviembre:
        print(11)
 case .Diciembre:
        print(12)
}
    return mes
}
var mes:meses = .Noviembre
numeroMes(meses:mes)
