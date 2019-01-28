//
//  AlertFactory.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class AlertFactory: NSObject {

    static func alertForEmptyEmailOrEmptyPass() -> UIAlertController{
        let alertStruct = StringUtils.alertStructForEmptyUserAndEmptyPass()
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alert = UIAlertController(title: alertStruct.title, message: alertStruct.message, preferredStyle: .alert)
        alert.addAction(alertAction)
        
        return alert
    }
    
    static func alertForInvalidEmail() -> UIAlertController{
        let alertStruct = StringUtils.alertStructForInvalidEmail()
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alert = UIAlertController(title: alertStruct.title, message: alertStruct.message, preferredStyle: .alert)
        alert.addAction(alertAction)
        
        return alert
    }
}
