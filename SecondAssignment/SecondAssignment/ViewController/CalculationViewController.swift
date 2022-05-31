//
//  CalculationViewController.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-31.
//

import UIKit

class CalculationViewController: UIViewController {
  // Connections
  @IBOutlet weak var avatarImage: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var billAmountTextField: UITextField!
  @IBOutlet weak var billPercentageSegment: UISegmentedControl!
  @IBOutlet weak var numberOfPeopleStepper: UIStepper!
  @IBOutlet weak var numberOfPeopleLabel: UILabel!
  @IBOutlet weak var calculateButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      avatarImage.layer.cornerRadius = 10 // set avatar image borderradius
      avatarImage.layer.borderColor = UIColor.darkGray.cgColor // set its border color
      avatarImage.layer.borderWidth = 2 // sets borderwidth
      
      numberOfPeopleLabel.text = String(Int(numberOfPeopleStepper.value)) // sets numberOfPeopleLabel according to stepper's value
      
      billAmountTextField.addTarget(self, action: #selector(billAmountadded), for: .editingChanged)
   
      
      calculateButton.layer.cornerRadius = 5
      
    }
  
  
  @objc
  func billAmountadded(textfield: UITextField) {
    
    if textfield.text?.count == 1 {
      
      if !textfield.text!.contains("$"){
        textfield.text = "$" + textfield.text!
      }
      
    }
    
    
  }
    

    

}
