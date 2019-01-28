//
//  LoginService.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class LoginService: NSObject {

    var delegate : LoginProtocol
    
    init(delegate : LoginProtocol) {
        self.delegate = delegate
    }
    
    func requestLogin(email : String, pass : String){
        
        var alert : UIAlertController
    
        if Helper.isMailOrPassEmpty(email: email, password: pass){
            alert = AlertFactory.alertForEmptyEmailOrEmptyPass()
            delegate.showAlert(alert: alert)
        }else if Helper.isValidEmail(email: email) == false{
            alert = AlertFactory.alertForInvalidEmail()
            delegate.showAlert(alert: alert)
        }else{
            let Url = String(format: "http://localhost:8080/login/12345")
            guard let serviceUrl = URL(string: Url) else { return }
            
//            let parameterDictionary = ["username" : email, "password" : pass]
            var request = URLRequest(url: serviceUrl)
            request.httpMethod = "POST"
//            request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
//            guard let httpBody = try? JSONSerialization.data(withJSONObject: parameterDictionary, options: []) else {
//                return
//            }
//            request.httpBody = httpBody
            
            let session = URLSession.shared
            session.dataTask(with: request) { (data, response, error) in
                if let response = response {
                    print(response)
                }
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: [])
                        print(json)
                    }catch {
                        print(error)
                    }
                }
                }.resume()
        }
    }
    
    
}
