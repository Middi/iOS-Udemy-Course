
let skeleton = Enemy(health: 100)


let dragon = Dragon(health: 110)

dragon.wingSpan = 5
dragon.attackStrength = 20

dragon.attack()

print(dragon.health)


let skeleton2 = Enemy(health: 100)

skeleton2.damagedBy(amount: 30)

print(skeleton2.health)
