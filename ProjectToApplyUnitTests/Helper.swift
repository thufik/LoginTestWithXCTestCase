//
//  Helper.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import Foundation

class Helper: NSObject {
    
    static func isValidEmail(email : String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    static func isMailOrPassEmpty(email : String, password : String) -> Bool{
        if email == "" || password == ""{
            return true
        }
        
        return false
    }
}
