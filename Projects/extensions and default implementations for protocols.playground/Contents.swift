//import UIKit
//
//extension Double {
//    func round(to places: Int) -> Double {
//        let precisionNumber = pow(10, Double(places))
//        var n = self
//        n = n * precisionNumber
//        n.round()
//        n = n / precisionNumber
//        return n
//    }
//}
//var myDouble = 3.14159
//
//myDouble.round(to: 2)
//
//extension UIButton {
//    func rounded() {
//
//        self.backgroundColor = .blue
//        self.layer.cornerRadius = 6
//        self.clipsToBounds = true
//    }
//}
//
//
//let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//
//button.rounded()


func fibonacci(n: Int) {
    
    //Write your code here.
        
 
    
    var sequence = [0, 1]
        
            if n == 0 {
                print([0])
            }
            else if n == 1 {
                print(sequence)
            }
            
            else {
                for number in 2...n-1 {
                    let seq = sequence[number-1] + sequence[number-2]
                    sequence.append(seq)
                }
                
            print(sequence)
            }
          
        
    }

fibonacci(n: 5)
