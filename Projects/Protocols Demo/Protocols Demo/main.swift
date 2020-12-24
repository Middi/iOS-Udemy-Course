
protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("hehehehhe")
    }
}

struct airplane: CanFly {

}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("i  may lay an egg")
        }
    }
    
}


class Eagle: Bird, CanFly {
    
}


class Penguin: Bird {
    func swim() {
        print("paddling")
    }
}

struct flyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

var myPenguin = Penguin()
let myEagle = Eagle()

let museum = flyingMuseum()

let myPlane = airplane()

myEagle.fly()

//myPlane.fly()
//
//museum.flyingDemo(flyingObject: myPlane)
//
//
//myPenguin.swim()





//func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int ) -> Int {
//    return operation(n1, n2)
//}
//
//print(calculator(n1: 13, n2: 33, operation: {$0 * $1}))
//
//
//let arr = [1,2,3,4,5]
//
//
//let transformed = arr.map{$0 + 1}
//
//let stringed = arr.map{"\($0)"}
//
//print(stringed)


