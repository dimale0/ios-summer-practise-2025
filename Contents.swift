import Foundation

    //1 задание - создать класс автомобиля
class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year 
    }
    
    func printInfo() {
        print("марка: \(brand), модель: \(model), год выпуска: \(year)")
    }
}
    
        //2 задание - 4 подкласса
class Audi: Car {
    var acceleration: Double
        
    init(model: String, year: Int, acceleration: Double) {
        self.acceleration = acceleration
        super.init(brand: "Audi", model: model, year: year)
    }
    
    override func printInfo() {
            super.printInfo()
            print("ускорение: \(acceleration) сек до 100 км/ч")
        }
}
    
class Lamborghini: Car {
    var enginePower: Int
    var fuelFlow: Double
        
    init(model: String, year: Int, enginePower: Int, fuelFlow: Double) {
        self.enginePower = enginePower
        self.fuelFlow = fuelFlow
        super.init(brand: "Lamborghini", model: model, year: year)
    }
    
    override func printInfo() {
            super.printInfo()
            print("мощность двигателя: \(enginePower), расход топлива: \(fuelFlow)")
        }
}
    
class Maserati: Car {
    var numberOfHousepower: Double
        
    init(model: String, year: Int, numberOfHousepower: Double) {
        self.numberOfHousepower = numberOfHousepower
        super.init(brand: "Maserati", model: model, year: year)
    }
    
    override func printInfo() {
            super.printInfo()
            print("количество лошадиных сил: \(numberOfHousepower)")
        }
}
    
class BMW: Car {
    var batteryRange: Int
    init(model: String, year: Int, batteryRange: Int) {
        self.batteryRange = batteryRange
        super.init(brand: "BMW", model: model, year: year)
    }
    
    override func printInfo() {
            super.printInfo()
            print("запас хода: \(batteryRange) км")
        }
}
    
    
    
    //3 задание -создание автомобилей
func createCars() -> [Car] {
    return [
        Lamborghini(model:"Gallardo", year: 2005, enginePower: 700,fuelFlow: 13.5),
        Lamborghini(model:"Aventador", year: 2011, enginePower: 800,fuelFlow: 15),
        Audi(model: "A6", year: 2020, acceleration: 5.4),
        Audi(model: "Q7", year: 2022, acceleration: 6.1),
        Maserati(model: "Levante", year: 2022, numberOfHousepower: 350),
        Maserati(model: "Ghibli", year: 2023, numberOfHousepower: 450),
        BMW(model: "M5", year: 2022, batteryRange: 600),
        BMW(model: "X6", year: 2021, batteryRange: 700)
    ]
}
    
    //4 задание - метод для организации гонок
func raceBetween(_ car1: Car, _ car2: Car) -> Car {
    print("\nгонка: \(car1.brand) \(car1.model) VS \(car2.brand) \(car2.model)")
    let winner = car1.year >= car2.year ? car1 : car2
    print("победитель: \(winner.brand) \(winner.model)")
    return winner
}
    
    //5 задание - гонки
func startTournament() {
    let cars = createCars()
    var winners: [Car] = []
    
    guard cars.count % 2 == 0 else {
        print("ошибка: количество автомобилей нечетное")
        return
    }
    
    for i in stride(from: 0, to: cars.count, by: 2) {
        winners.append(raceBetween(cars[i], cars[i+1]))
    }
    
    if let finalWinner = winners.max(by: { $0.year < $1.year }) {
        print("\n общий победитель турнира:")
        finalWinner.printInfo()
    }
}

startTournament()

