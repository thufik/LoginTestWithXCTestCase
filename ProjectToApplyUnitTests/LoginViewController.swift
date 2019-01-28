//
//  ViewController.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

protocol LoginProtocol {
    
    func showAlert(alert : UIAlertController)
}

class LoginViewController: UIViewController, LoginProtocol{

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    var loginService : LoginService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginService = LoginService(delegate : self)
    }
    
    @IBAction func accessSystem(_ sender: UIButton) {
        
        guard let mail = txtUser.text, let pass = txtPassword.text else {
            return
        }
        
        loginService.requestLogin(email: mail, pass: pass)
    }
    
    func showAlert(alert : UIAlertController){
        self.present(alert, animated: true, completion: nil)
    }
}


