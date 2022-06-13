//
//  ViewController.swift
//  Contest
//
//  Created by Vladimir Pisarenko on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func enterButtonTapped(_ sender: UIButton) {
        
        if emailTextField.text == "" {
            emailTextField.transform = CGAffineTransform.identity
        } else {
            performSegue(withIdentifier: "ToSecond", sender: sender)
        }
    }
    
    
    @IBAction func enterTochedDown(_ sender: Any) {
        
//        emailTextField.transform = CGAffineTransform(translationX: 1.5, y: 1.5)
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: [], animations: {
            self.emailTextField.transform = CGAffineTransform(translationX: 1.5, y: 1.5)
        }, completion: nil)
    }
}

