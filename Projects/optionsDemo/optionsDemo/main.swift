struct MyOptional {
    var prop = 123
    func method() {
        print("iam the walrus")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

myOptional?.method()
