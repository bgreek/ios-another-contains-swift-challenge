import Foundation

//extension String {
//    func anotherContains(to aString:String) -> Bool {
//        if aString.caseInsensitiveCompare(self) == .orderedSame {
//            return true
//        } else {
//            return false
//        }
//    }
//}


extension String {
    func anotherContains(to aString: String) -> Bool {
        if self.localizedLowercase.range(of: aString.localizedLowercase) != nil {
             return true
        } else {
             return false
        }
    }
}
// test cases
print("Where is WaLdO".anotherContains(to: "WALDO")) // true
print("Where is WaLdO".anotherContains(to: "where")) // true
print("Where is WaLdO".anotherContains(to: "is wA")) // true
print("Where is WaLdO".anotherContains(to: "nOPe"))  // false

print("HI there".anotherContains(to: "HI"))
