// Guard Unwrapping

import UIKit

var optional1: Int? = nil

func addFour(numberToAdd num: Int) -> Int {
  let numPlusFour = num + 4
  print("addFour: \(numPlusFour)")
  return numPlusFour
}


// addFour(optional1)

func unwrapOptional(varToUnwrap num: Int?) -> Int {
  guard let unwrappedNum = num else { return 0 }
  return unwrappedNum
}

func giveNumberValue(_ number: Int?) -> Int {
  let newNumber = generateRandomNumber()
  return newNumber
}


func generateRandomNumber() -> Int {
  let randomNum = Int(arc4random_uniform(100))
  return randomNum
}



print(unwrapOptional(varToUnwrap: giveNumberValue(optional1)))
