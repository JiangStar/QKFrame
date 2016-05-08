//
//  QKLoggerTests.swift
//  QKFrame
//
//  Created by Jiang, Xinxing on 16/5/9.
//  Copyright © 2016年 Jiang, Star. All rights reserved.
//

import XCTest
@testable import QKFrame

class QKLoggerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        QKLogger.infoLog("INFO log!")
        // 2016-05-09 01:14:27.902 QKFrame[10273:634524] [INFO][QKLoggerTests.swift - testExample():28] - INFO log!
        QKLogger.debugLog("DEBUG log!")
        // 2016-05-09 01:14:27.902 QKFrame[10273:634524] [DEBUG][QKLoggerTests.swift - testExample():30] - DEBUG log!
        QKLogger.warnLog("WARN log!")
        // 2016-05-09 01:14:27.902 QKFrame[10273:634524] [WARN][QKLoggerTests.swift - testExample():32] - WARN log!
        QKLogger.errorLog("ERROR log!")
        // 2016-05-09 01:14:27.902 QKFrame[10273:634524] [ERROR][QKLoggerTests.swift - testExample():34] - ERROR log!
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
