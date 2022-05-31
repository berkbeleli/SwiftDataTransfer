//
//  ResultViewController.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-30.
//

import UIKit

class ResultViewController: UIViewController {
  // Connections
  @IBOutlet weak var totalAmountLabel: UILabel!
  @IBOutlet weak var tipAmountLabel: UILabel!
  @IBOutlet weak var billForEachLabel: UILabel!
  @IBOutlet weak var reCalculateButton: UIButton!
  
  var delegate: CalculationViewController!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    reCalculateButton.layer.cornerRadius = 5
    
    delegate?.delegate = self
    delegate.makeCalculation() // call the function to calculate results according tto choices
  }
  
  
  @IBAction func reCalculateButtonClicked(_ sender: UIButton) {
    self.dismiss(animated: true)
    delegate.clearScreen() //  clear the calculationView Screen
  }
  
  
}

extension ResultViewController: CalculationViewControllerDelegate {
  
  func didEnteredBill(tip: TipModel) {
    let tipBrain = TipBrain(tip: tip)// sends the received tipModel object to our TipBrain struct so we can calculate things we want
    totalAmountLabel.text = String(tipBrain.getBillAmount()) // get sum of the bill and sets the value of label
    tipAmountLabel.text = String(tipBrain.getTipAmount())// get tip amount value
    billForEachLabel.text = String(tipBrain.getBillForEachPerson()) // get bill for each person
  }
  
  
  func didFailWithError(error: Error) {
    print(error.localizedDescription)
  }
  
}
