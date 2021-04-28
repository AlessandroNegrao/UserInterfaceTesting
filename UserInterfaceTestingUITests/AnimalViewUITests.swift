//
//  UserInterfaceTestingUITests.swift
//  UserInterfaceTestingUITests
//
//  Created by Alessandro Negrão on 27/04/21.
//

import XCTest
import SwiftUI

class AnimalViewUITests: XCTestCase {
    //XCUIApplication
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
   
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInicialStateOfImage() throws {
        //Check that image is Suindara
        XCTAssertEqual(app.images["animalImage"].label, "suindara", "It's not a Suindara")
    }
    
    //Image identifier: "animalImage"
    //Button identifier: "colorButton"
    
    func testButtonActionChangedColorButtonAndAnimalImage() throws {
        
        //Check that image is Suindara

        //The colorSet we expect
        
        //Loop through the colorSet
        
        //Check the label matches the colorButton we expect
            
        //Tap colorButton

        //Check that animalImage is piramboia
        
        //Check the label matches the colour we expect
            
        //Check that logo is still piramboia
        
    }
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
