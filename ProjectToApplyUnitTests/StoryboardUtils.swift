//
//  StoryboardUtils.swift
//  ProjectToApplyUnitTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import Foundation
import UIKit

class StoryboardUtils: NSObject {

    private static let mainStoryBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
    
    static func returnLoginViewController() -> LoginViewController{
        let viewController = self.mainStoryBoard.instantiateViewController(withIdentifier: "loginViewController") as! LoginViewController
        return viewController
    }
}
