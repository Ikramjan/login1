//
//  ViewController.swift
//  login1
//
//  Created by Икрамджан Абдукадыров on 17/1/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user = "Ikramjan"
    private let password = "101088"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewControllerViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func buttonLogIn() {
        if userTextField.text != user || passwordTextField.text != password {
            showAlert(tittle: "Invalid login or password", massage: "Please, enter correct login or password")
        }
    }
    
    @IBAction func forgotNamePassword(_ sender: UIButton) {
        
        
        if sender.tag == 0 {
         showAlert(tittle: "Ops!", massage: "Your name is \(user)")
        } else
        {
         showAlert(tittle: "Ops!", massage: "Your password is \(password)")
        }
    }
    
}
extension LoginViewController {
private func showAlert(tittle: String, massage: String) {
    let alert = UIAlertController(title: tittle, message: massage, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default) {_ in self.passwordTextField.text = ""
    }
    alert.addAction(okAction)
    present(alert, animated:  true)
}
}




   







