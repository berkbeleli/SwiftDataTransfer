//
//  ViewController.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-30.
//

import UIKit

class LoginViewController: UIViewController {
 // Connections
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var saveDataButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    usernameTextField.setIcon(UIImage(named: "user")!) // sets usernametextfield icon
    nameTextField.setIcon(UIImage(named: "name")!) // sets nametextfield icon
    loginButton.layer.cornerRadius = 5 // set the border radius of button
    saveDataButton.layer.cornerRadius = 5
    
  }

  @IBAction func loginButtonPressed(_ sender: UIButton) {
    
    if usernameTextField.text?.count == 0 || nameTextField.text?.count == 0{ // checks if either of textfields empty
      
      if usernameTextField.text?.count == 0 && nameTextField.text?.count == 0{ // if both empty
        usernameTextField.layer.borderColor = UIColor.red.cgColor // change border color
        usernameTextField.layer.borderWidth = 3 // change border width
        nameTextField.layer.borderColor = UIColor.red.cgColor // change border color
        nameTextField.layer.borderWidth = 3 // change border width
      }else if usernameTextField.text?.count == 0{ // if only username is empty
        usernameTextField.layer.borderColor = UIColor.red.cgColor // change border color
        usernameTextField.layer.borderWidth = 3 // change border width
      }else{ //if name text field empty
        nameTextField.layer.borderColor = UIColor.red.cgColor // change border color
        nameTextField.layer.borderWidth = 3 // change border width
      }
      
    }else { // if none of the textfield empty
      usernameTextField.layer.borderColor = UIColor.clear.cgColor // change border color
      usernameTextField.layer.borderWidth = 0 // change border width
      nameTextField.layer.borderColor = UIColor.clear.cgColor // change border color
      nameTextField.layer.borderWidth = 0 // change border width
      
      if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CalculationView") as? CalculationViewController { // instantiate calculationview
        
        navigationController?.pushViewController(vc, animated: true) // push the calculation view
        
        let newUser = User(name: nameTextField.text!, username: usernameTextField.text!) // create a new user object according to the entered values
        vc.addObserveMethod() // instantiate calculationview observer
        NotificationCenter.default.post(name: .userData, object: nil, userInfo: ["userValues": newUser]) // post entered value  to receive from calculationview
      }
    
    }
    
  }
  
}
