//
//  SignnInController.swift
//  test2
//
//  Created by Sabrina R Krueger on 2/8/20.
//  Copyright © 2020 Winners. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class SignnInController: UIViewController {
    
    @IBOutlet weak var textBoxEmail: UITextField!
    
    @IBOutlet weak var textBoxPassword: UITextField!
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements(y: 0)
        
    }
    
    
    
    func setUpElements(y: Int){
        
    errorLabel.alpha = CGFloat((y))
        
        
    }
    @IBAction func signInButtonTapped(_ sender: Any) {
        
        // Use Firebase library to configure APIs
        FirebaseApp.configure()
        
        let email = textBoxEmail.text
        let password = textBoxPassword.text
        //if email == "johndoe@gmail.com", password == "password" {
          //  self.performSegue(withIdentifier: "goToHome", sender: self)
            
       // }
        
        
        Auth.auth().signIn(withEmail: email!, password: password!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            
            if let u = authResult {
                self!.performSegue(withIdentifier: "goToHome", sender: self)
                
            }
          else {
           print("It failed")
           self!.setUpElements(y: 1)
            }
          // ...
        }
        
        
    }
    
}
