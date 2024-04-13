// SuperClass: Ship
class Ship {
    var name: String
        var year: Int
        var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
            self.name = name
            self.year = year
            self.countryOfOrigin = countryOfOrigin
        }
    
}

// firstSubClass: CruiseShip

class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // add a method to add a passenger if the ship is not at max capacity
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Current passenger count: \(currentPassengerCount)")
        } else {
                print("Max. Cannot add more passengers!")
        }
        
    }
    //add a method to print the current passenger count
    func printCurrentPassengerCount() {
            print("total of current passengers: \(currentPassengerCount)")
        }
    }



// CargoShip (subclass)
class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // add a method to add cargo if the ship is not at max capacity
    func addCargo(amount: Int) {
        if currentCargoCount + amount <= maxCargoCapacity {
            currentCargoCount += amount
            print("Current cargo count: \(currentCargoCount)")
        } else {
            print("Max. Cannot add more cargo!")
        }
    }

    // add a method to print the current cargo count
    
    func printCurrentCargoCount() {
            print("Current cargo count: \(currentCargoCount)")
        }
}

// subClass pirateShip

class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // add a method to add treasure if the ship is not at max capacity
    func addTreasure(amount: Int) {
        if currentTreasureCount + amount <= maxTreasureCapacity {
            currentTreasureCount += amount
            print("Current treasure count: \(currentTreasureCount)")
        } else {
            print("max, Cannot add more Tresure!")
        }
    }
    
    func printCurrentTreasureCount() {
            print("Current tresure count: \(currentTreasureCount)")
        }
        
}


// Creating an instance of the PirateShip subclass (Micheal)
var pirateShip = PirateShip(name: "Michael Lewis", year: 2024, countryOfOrigin: "Canada", maxTreasureCapacity: 2000, currentTreasureCount: 200, numberOfCannons: 300)

// print subclass and superclass properties

print(pirateShip.maxTreasureCapacity)
print(pirateShip.currentTreasureCount)
print(pirateShip.numberOfCannons)
print(pirateShip.name)
print(pirateShip.year)
print(pirateShip.countryOfOrigin)


pirateShip.addTreasure(amount: 2000)
pirateShip.printCurrentTreasureCount()


// more fo CruiseShip subclass (Farsheedo)
var cruiseShip = CruiseShip(name: "Farsheedo", year: 2022, countryOfOrigin: "Turkey", maxCapacity: 500, oceanOfOperation: "Pacific", currentPassengerCount: 250)


print(cruiseShip.maxCapacity)
print(cruiseShip.oceanOfOperation)
print(cruiseShip.currentPassengerCount)
cruiseShip.addPassenger()
cruiseShip.printCurrentPassengerCount()
