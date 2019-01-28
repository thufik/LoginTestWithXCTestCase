//
//  StringUtils.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

public struct Alert{
    var title : String
    var message: String
}

public enum StringKeys : String{
    case EmptyEmailOrEmptyPass = "messageEmptyMailOrPass"
    case InvalidEmail = "messageInvalidMail"
    case TitleWarning = "titleWarning"
}

class StringUtils: NSObject {

    static func alertStructForEmptyUserAndEmptyPass() -> Alert{
        
        let title = NSLocalizedString(StringKeys.TitleWarning.rawValue, comment: "")
        let message = NSLocalizedString(StringKeys.EmptyEmailOrEmptyPass.rawValue, comment: "")
        
        let alertStruct = Alert(title: title, message: message)
        
        return alertStruct
    }
    
    static func alertStructForInvalidEmail() -> Alert{
        
        let title = NSLocalizedString(StringKeys.TitleWarning.rawValue, comment: "")
        let message = NSLocalizedString(StringKeys.InvalidEmail.rawValue, comment: "")
        
        let alertStruct = Alert(title: title, message: message)
        
        return alertStruct
    }
}
