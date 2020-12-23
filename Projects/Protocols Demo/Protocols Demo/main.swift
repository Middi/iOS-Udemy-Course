
    protocol CanFly {
        func fly()
    }

    struct airplane: CanFly {
        func fly() {
            print("brrrr neoooow")
        }
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
    func fly() {
        print("the bird dlies away")
    }
    
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

myPlane.fly()

museum.flyingDemo(flyingObject: myPlane)


myPenguin.swim()
