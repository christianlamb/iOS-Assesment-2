//
//  ViewController.swift
//  IOS Assesment 2
//
//  Created by Christian Lamb on 10/25/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBAction func SubmitButtonTaped(_ sender: Any) {
        
        guard
            let firstName = FirstNameTextField.text, !firstName.isEmpty,
            let lastName = LastNameTextField.text, !lastName.isEmpty,
            let email = EmailTextField.text, !lastName.isEmpty
        else {
            let errorAlert = UIAlertController(title: "Error", message: "Please fill in all feilds", preferredStyle: UIAlertController.Style.alert)
            let dismissAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in}
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
        }
        let nameAndEmailAlet = UIAlertController(title: "Greetings", message: "Hello \(firstName) \(lastName)! Your Email Is \(email)"  , preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in}; nameAndEmailAlet.addAction(dismissAction)
         self.present(nameAndEmailAlet, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

  }
}
