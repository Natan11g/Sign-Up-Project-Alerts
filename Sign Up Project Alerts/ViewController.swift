//
//  ViewController.swift
//  Sign Up Project Alerts
//
//  Created by Natan Gluszko on 29/06/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if usernameTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Please fill in username textfield")
        } else if passwordTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Please fill in password textfield")
        } else if passwordTextField.text != passwordAgainTextField.text {
            makeAlert(titleInput: "Error", messageInput: "Two different passwords added")
        } else {
            makeAlert(titleInput: "Success", messageInput: "GOOD JOB")
        }
    }

    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    

}

