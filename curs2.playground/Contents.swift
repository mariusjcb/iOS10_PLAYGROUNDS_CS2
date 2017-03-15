class NrPrim {
    private var _value: Int?
    var value: Int? {
        get {
            return self._value
        }
        set(newValue) {
            self._value = newValue
        }
    }
    
    func check() -> Bool? {
        if self._value != nil {
            if self._value! <= 1 {
                return false
            }
            
            if self._value! <= 3 {
                return true
            }
            
            //for (i = 2; i <= n/2; i++)
            for i in 2...(self._value!/2) {
                if self._value! % i == 0 {
                    return false
                }
            }
            
            return true
        }
        
        return nil
    }
}

class VerificarePrim: NrPrim {
    private var _status: Bool?
    var status: Bool? {
        return self._status
    }
    
    override var value: Int? {
        get {
            return super.value
        }
        set(newValue) {
            super.value = newValue
            self._status = self.check()
        }
    }
}


var primeCalculatorBrain = VerificarePrim()

primeCalculatorBrain.value = 7
print("7 este prim?\nStatus: \(primeCalculatorBrain.status!)")

primeCalculatorBrain.value = 12
print("\n\n12 este prim?\nStatus: \(primeCalculatorBrain.status!)")

primeCalculatorBrain.value = Int("mama")
print("\n\nmama este prim?\nStatus: \(primeCalculatorBrain.status)")