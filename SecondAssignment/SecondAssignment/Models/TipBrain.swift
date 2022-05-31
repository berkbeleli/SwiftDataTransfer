//
//  TipBrain.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-30.
//

import Foundation

struct TipBrain { // definition of TipBrain structure
  var tip: TipModel
  var tipPercentage: Double { // creates its value according to the tip  percentage and return it
    switch tip.tipPercentage{
    case 0:
      return 0.10
    case 1:
      return 0.15
    case 2:
      return 0.20
    case 3:
      return 0.30
    default:
      return 0
    }
  }
  /// Get sum of the bill value according to choices
  func getBillAmount() -> Double {
    let tipAmount = getTipAmount()
    let totalAmount = Double(tip.billAmount) + tipAmount // sum of the tip and bill
    return totalAmount
  }
  /// Get only Tip amount according to bill value and tip percentage
  func getTipAmount() -> Double {
    let tipAmount = Double(tip.billAmount) * Double(tipPercentage)
    let roundedTipAmount = (100 * tipAmount).rounded() / 100
    return roundedTipAmount
  }
  /// Get bill for each person
  func getBillForEachPerson() -> Double{
    let totalAmount = getBillAmount()
    let amountForEachPerson = totalAmount / Double(tip.numberOfPeople)
    return amountForEachPerson
  }
  
}
