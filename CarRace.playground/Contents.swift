import UIKit

import Foundation

class Car {
    var brand: String
    var model: String
    var year: Int

    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }

    func showInfo() {
        print("Марка: \(brand), Модель: \(model), Год: \(year)")
    }
}

class BMW: Car {
    var power: Int

    init(model: String, year: Int, power: Int) {
        self.power = power
        super.init(brand: "BMW", model: model, year: year)
    }
}

class Audi: Car {
    var speed: Int

    init(model: String, year: Int, speed: Int) {
        self.speed = speed
        super.init(brand: "Audi", model: model, year: year)
    }
}

class Toyota: Car {
    var safety: Int

    init(model: String, year: Int, safety: Int) {
        self.safety = safety
        super.init(brand: "Toyota", model: model, year: year)
    }
}

class Mercedes: Car {
    var comfort: Int

    init(model: String, year: Int, comfort: Int) {
        self.comfort = comfort
        super.init(brand: "Mercedes", model: model, year: year)
    }
}

func createRandomCars(count: Int) -> [Car] {
    var cars: [Car] = []

    for _ in 0..<count {
        let type = Int.random(in: 0..<4)
        switch type {
        case 0:
            let bmw = BMW(model: "M5", year: Int.random(in: 2018...2024), power: Int.random(in: 300...600))
            cars.append(bmw)
        case 1:
            let audi = Audi(model: "A6", year: Int.random(in: 2018...2024), speed: Int.random(in: 200...280))
            cars.append(audi)
        case 2:
            let toyota = Toyota(model: "Corolla", year: Int.random(in: 2015...2024), safety: Int.random(in: 70...100))
            cars.append(toyota)
        case 3:
            let mercedes = Mercedes(model: "E-Class", year: Int.random(in: 2019...2024), comfort: Int.random(in: 80...100))
            cars.append(mercedes)
        default:
            break
        }
    }

    return cars
}

func race(car1: Car, car2: Car) -> Car {
    print("\n Гонка:")
    car1.showInfo()
    car2.showInfo()

    let winner: Car
    if car1.year > car2.year {
        winner = car1
    } else if car2.year > car1.year {
        winner = car2
    } else {
        winner = Bool.random() ? car1 : car2
    }

    print(" Победила:")
    winner.showInfo()
    return winner
}

let cars = createRandomCars(count: 4)

let winner1 = race(car1: cars[0], car2: cars[1])
let winner2 = race(car1: cars[2], car2: cars[3])

print("\n Финал:")
let finalWinner = race(car1: winner1, car2: winner2)

print("\n Общий победитель:")
finalWinner.showInfo()
