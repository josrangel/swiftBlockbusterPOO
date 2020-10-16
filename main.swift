let fechaRenta = Fecha(day:26,month:2, year:2020)
let numDiasRenta = 4
let prod1 = Product(id:1,nombre: "Toy Story", precio: 50.0, cantidad: 1)
let prod2 = Product(id:2,nombre: "Toy Story", precio: 50.0, cantidad: 1)
let ord1 = Order(id:1,fechaOrden:fechaRenta)
ord1.agregarItem(producto: prod1)
ord1.agregarItem(producto: prod2)
print(ord1.display())
print("Fecha Entrega: ",fechaRenta.agregarDias(dias:numDiasRenta).display())
