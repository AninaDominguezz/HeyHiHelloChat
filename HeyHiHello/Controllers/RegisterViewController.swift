//
//  RegisterViewController.swift
//  HeyHiHello
//
//  Created by Anina Dominguez on 22/9/22.
//  Copyright © 2022 Anina Dominguez. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    let alert = UIAlertController(title: "ERROR", message: "\(e.localizedDescription)", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        self.dismiss(animated: true, completion: nil)
                    }
                } else {
                    let alert = UIAlertController(title: "¡HECHO!", message: "Ya puedes iniciar sesión", preferredStyle: .alert)
                    self.present(alert, animated: true, completion: nil)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        self.performSegue(withIdentifier: K.registerSegue, sender: self)
                        self.dismiss(animated: true, completion: nil)
                    }
                }
            }
        }
        
    }
}
