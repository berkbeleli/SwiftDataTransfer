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
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    usernameTextField.setIcon(UIImage(named: "user")!) // sets usernametextfield icon
    nameTextField.setIcon(UIImage(named: "name")!) // sets nametextfield icon
    loginButton.layer.cornerRadius = 5 // set the border radius of button
  }

  @IBAction func loginButtonPressed(_ sender: UIButton) {
    
    if usernameTextField.text?.count == 0 || nameTextField.text?.count == 0{
      
      if usernameTextField.text?.count == 0 && nameTextField.text?.count == 0{
        usernameTextField.layer.borderColor = UIColor.red.cgColor
        usernameTextField.layer.borderWidth = 3
        nameTextField.layer.borderColor = UIColor.red.cgColor
        nameTextField.layer.borderWidth = 3
      }else if usernameTextField.text?.count == 0{
        usernameTextField.layer.borderColor = UIColor.red.cgColor
        usernameTextField.layer.borderWidth = 3
      }else{
        nameTextField.layer.borderColor = UIColor.red.cgColor
        nameTextField.layer.borderWidth = 3
      }
      
    }else {
      usernameTextField.layer.borderColor = UIColor.clear.cgColor
      usernameTextField.layer.borderWidth = 0
      nameTextField.layer.borderColor = UIColor.clear.cgColor
      nameTextField.layer.borderWidth = 0
      
      if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CalculationView") as? CalculationViewController {
        
        navigationController?.pushViewController(vc, animated: true)
        
        let newUser = User(name: nameTextField.text!, username: usernameTextField.text!)
        vc.addObserveMethod()
        NotificationCenter.default.post(name: .userData, object: nil, userInfo: ["userValues": newUser])
      }
      
      
    }
    
  }
  
}

