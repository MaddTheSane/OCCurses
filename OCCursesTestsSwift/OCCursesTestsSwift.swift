//
//  OCCursesTestsSwift.swift
//  OCCursesTestsSwift
//
//  Created by C.W. Betts on 10/11/15.
//  Copyright © 2015 Itai Ferber. All rights reserved.
//

import XCTest
import OCCurses

class OCCursesTestsSwift: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	func testBlackColor() {
		XCTAssertTrue(OCColor.blackColor().colorIdentifier == .Black)
	}
	
	func testRedColor() {
		XCTAssertTrue(OCColor.redColor().colorIdentifier == .Red)
	}
	
	func testGreenColor() {
		XCTAssertTrue(OCColor.greenColor().colorIdentifier == .Green)
	}
	
	func testYellowColor() {
		XCTAssertTrue(OCColor.yellowColor().colorIdentifier == .Yellow)
	}

	func testBlueColor() {
		XCTAssertTrue(OCColor.blueColor().colorIdentifier == .Blue)
	}

	func testMagentaColor() {
		XCTAssertTrue(OCColor.magentaColor().colorIdentifier == .Magenta)
	}

	func testCyanColor() {
		XCTAssertTrue(OCColor.cyanColor().colorIdentifier == .Cyan)
	}

	func testWhiteColor() {
		XCTAssertTrue(OCColor.whiteColor().colorIdentifier == .White)
	}
}
