class Product {
    private var id: Int
    private var nombre: String
    private var precio: Double
    private var cantidad: Int

    init(id:Int,nombre:String,precio:Double,cantidad:Int){
        self.id = id
        self.nombre = nombre
        self.precio = precio
        self.cantidad = cantidad

    }

    var precioUnitario: Double {
       return self.precio
    }

    var qty: Int {
        return self.cantidad
    }

    func display() -> String{
        return "id: \(id),nombre: \(nombre),precio: \(precio),cantidad: \(cantidad) "
    }
    
}