//: Playground - noun: a place where people can play

import UIKit

var optional1: Int? = nil

func addFour(numberToAdd num: Int) -> Int {
  let numPlusFour = num + 4
  print("addFour: \(numPlusFour)")
  return numPlusFour
}


// addFour(optional1)

func unwrapOptional(varToUnwrap num: Int?) -> Int {
  if let unwrappedNum = num {
    return unwrappedNum
  } else {
    let noValue = 0
    return noValue
  }
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
