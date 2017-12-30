//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, "

var newString = str + "Aaron"

for character in newString.characters {
    
    print(character)
    
}




var newTypeString = NSString(string: newString)

newTypeString.substringToIndex(5)
newTypeString.substringFromIndex(6)
newTypeString.substringWithRange(NSRange(location: 1, length: 7))

if newTypeString.containsString("Aaron") {
    
    //Aaron is there!
}

newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString