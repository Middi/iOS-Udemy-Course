//
//class Enemy {
//    var health: Int
//    var attackStrength = 10
//
//    init(health: Int) {
//        self.health = health
//    }
//
//    func move() {
//        print("Walk forwards.")
//    }
//
//    func attack() {
//        print("Land a hit, does \(attackStrength) damage.")
//    }
//}


class Enemy {
    var health: Int
    var attackStrength = 10
    
    init(health: Int) {
        self.health = health
    }
    
    func damagedBy(amount: Int) {
        health = health - amount
        print("health is now \(health)")
    }
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
