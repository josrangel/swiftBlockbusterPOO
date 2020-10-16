class Fecha {
    private var day: Int
    private var month: Int
    private var year: Int


    init(day: Int,month: Int, year: Int){
        self.day = day
        self.month = month
        self.year = year
    }

    func esBisiesto() -> Bool{
      return year%4 == 0 && (!(year%100 == 0) || (year%400 == 0))
    }

    func calcularUltimoDiaMes() -> Int {
        var diasMes = 30
        switch month {
            case 1,3,5,7,8,10,12:  //31
                diasMes = 31
            case 4,6,9,11:         //30
                diasMes = 30
            case 2:
                diasMes = esBisiesto() ?29 : 28
            default:
                diasMes = 0
        }
      return diasMes
    }

    func agregarDias(dias:Int) -> Fecha {
    var yearEntrega = self.year
    var monthEntrega = self.month
    var dayEntrega = self.day
    
        let ultimo = self.calcularUltimoDiaMes()
        for _ in 1...dias-1 {
            if(dayEntrega == ultimo) {
                dayEntrega = 0
                if(monthEntrega == 12) {
                    monthEntrega = 0
                    yearEntrega += 1
                }
                monthEntrega += 1
            }
            dayEntrega+=1
        }
     return Fecha(day: dayEntrega,month: monthEntrega,year: yearEntrega)
    }


    func display() -> String{
        return "\(day)\\\(month)\\\(year)"
    }
}