//
//  Extension+UITextField.swift
//  SecondAssignment
//
//  Created by Berk Beleli on 2022-05-31.
//

import Foundation
import UIKit

extension UITextField { // create extension for UITextField object
  
  /// This function changes the image of the left side of the given text field
  ///
  ///  ```
  /// @IBOutlet weak var usernameTextField: UITextField!
  /// usernameTextField.setIcon(UIImage(named: "user")!)
  /// ```
  func setIcon(_ image: UIImage) {
    let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20)) // creates an icon view for  the left side of the textfield
    iconView.image = image
    
    let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30)) // creates a container for created icon
    iconContainerView.addSubview(iconView) // add created icon to our container
    leftView = iconContainerView // sets the left side of the textfield our created container
    leftViewMode = .always // sets the left side of  the textfield always visible
  }
  
}
