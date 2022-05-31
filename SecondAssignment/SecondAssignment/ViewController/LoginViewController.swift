//
//  ViewController.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-30.
//

import UIKit

class LoginViewController: UIViewController {

  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    usernameTextField.setIcon(UIImage(named: "user")!) // sets usernametextfield icon
    nameTextField.setIcon(UIImage(named: "name")!) // sets nametextfield icon
    loginButton.layer.cornerRadius = 5 // set the border radius of button
  }


}

