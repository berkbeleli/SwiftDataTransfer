//
//  CalculationViewControllerDelegate.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-30.
//

import Foundation

protocol CalculationViewControllerDelegate: AnyObject {// definition of delegate model
  func didEnteredBill(tip: TipModel)
  func didFailWithError(error: Error)
}
