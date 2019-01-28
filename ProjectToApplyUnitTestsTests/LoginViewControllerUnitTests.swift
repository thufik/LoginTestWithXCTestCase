//
//  LoginViewControllerUnitTests.swift
//  ProjectToApplyUnitTestsTests
//
//  Created by EquipeSuporteAplicacao on 5/22/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import XCTest
@testable import ProjectToApplyUnitTests

class LoginViewControllerUnitTests: XCTestCase{
    
    override func setUp(){
        super.setUp()
    }
    
    override func tearDown(){
        super.tearDown()
    }
    
    func testInputEmptyUserNameAndEmptyPassword(){
        let email = ""
        let pass = ""

        let isEmpty = Helper.isMailOrPassEmpty(email : email, password : pass)
        
        XCTAssertTrue(isEmpty)
    }
    
    func testInputInvalidEmail(){
        let email = "teste@teste"
        
        let isValid = Helper.isValidEmail(email: email)
        
        XCTAssertFalse(isValid)
    }
}
