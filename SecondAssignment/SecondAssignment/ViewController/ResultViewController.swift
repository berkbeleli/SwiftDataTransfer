//
//  ResultViewController.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-31.
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
  }
  
  
  @IBAction func reCalculateButtonClicked(_ sender: UIButton) {
  }
  
  
}
