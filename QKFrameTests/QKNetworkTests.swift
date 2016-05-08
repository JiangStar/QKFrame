//
//  QKNetworkTests.swift
//  QKFrame
//
//  Created by Jiang, Xinxing on 16/5/8.
//  Copyright © 2016年 Jiang, Star. All rights reserved.
//

import XCTest
@testable import QKFrame

import SwiftyJSON

class QKNetworkTests: XCTestCase {
    
    let QK_URL = "http://qingke.me/qks/list?page=1"
    
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
        
        //Use XCTestExpectation to wait for asynchronous processes.
        let expectation = expectationWithDescription("QKNetwork")
        QKNetwork.getJSON(QK_URL, parameters: nil,
                          onSuccess: {json in
                            QKLogger.infoLog("Success to get resposonse from \(self.QK_URL)")
                            debugPrint(json)
                            expectation.fulfill()
            },
                          onError: {error in
                            debugPrint(error.localizedDescription)
                            QKLogger.errorLog(error)
                            expectation.fulfill()
        })
        waitForExpectationsWithTimeout(5.0, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
