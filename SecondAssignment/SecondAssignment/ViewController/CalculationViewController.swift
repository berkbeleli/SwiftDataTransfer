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
    billAmountTextField.delegate = self // set delegate to our class
    
    calculateButton.layer.cornerRadius = 5 // set corner radius of the calculate button
    
  }
  
  
  @IBAction func numberOfPeopleValueChanged(_ sender: UIStepper) {
    numberOfPeopleLabel.text = String(Int(sender.value)) // change the value of the numberOfPeopleLabel according to our stepper
  }
  
  
  ///Observes if the first character of the textfield is $ symbol otherwise put $ symbol beginning of the textfield
  @objc
  func billAmountadded(textfield: UITextField) {
    
    if textfield.text?.count == 1 { // checks if the count of the character equals 1
      if !textfield.text!.contains("$"){
        textfield.text = "$" + textfield.text! // if its first character not includes $  symbol puts symbol first
      }
    }
  }
  
  
  
  
}

extension CalculationViewController: UITextFieldDelegate { // Confirms UITextFieldDelegation for our class
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let allowedCharacters = CharacterSet.decimalDigits
    let characterSet = CharacterSet(charactersIn: string)
    return allowedCharacters.isSuperset(of: characterSet)  //check if the character  is numeric or not
  }
  
}
