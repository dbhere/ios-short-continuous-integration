//
//  RomanNumeralCalculatorUITests2.swift
//  RomanNumeralCalculatorUITests2
//
//  Created by AlexScott on 2019/3/5.
//  Copyright © 2019 buddybuild. All rights reserved.
//

import XCTest

class RomanNumeralCalculatorUITests2: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared.orientation = .portrait
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddOnePlusOne() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let iButton = app.buttons["I"]
        let calculatedLabel = app/*@START_MENU_TOKEN@*/.staticTexts["calculated_value"]/*[[".staticTexts[\"IV\"]",".staticTexts[\"calculated_value\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "I")
        
        // tap "+"
        app.buttons["+"].tap()
        
        // tap "I"
        iButton.tap()
        XCTAssertEqual(calculatedLabel.label, "II")
        
    }

}
