class Order {
    private var id: Int
    private var fechaOrden: Fecha
    private var items = [Product]()
    private static var iva: Double = 0.16
   
    init(id: Int,fechaOrden: Fecha){
        self.id = id
        self.fechaOrden = fechaOrden
    }

    func agregarItem(producto: Product){
        items.append(producto)
    }

    func calcularTotal() -> Double{
       var total: Double = 0.0
       for item in items {
              total+=item.precioUnitario * Double(item.qty)
        }
        return total
    }

    func display() -> String{
        var total = 0.0
        var salida="Clave Orden: "+String(id)+"\n"
           salida+="Fecha Orden: "+String(fechaOrden.display())+"\n"
           salida+="Items"+"\n"
           for item in items {
              salida+="     "+String(item.display()) + "\n"
           }
           total = calcularTotal()
           salida+="Total: " + String(total) + "\n"
           salida+="IVA: " + String(total * Order.iva) + "\n"
           salida+="Gran Total: " + String(total * (1 + Order.iva)) + "\n"
           return salida

    }
    
}