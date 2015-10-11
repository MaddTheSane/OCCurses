//
//  OCBorderTests.m
//  OCCurses
//
//  Created by Itai Ferber on 3/8/11.
//  Copyright 2011 Itai Ferber. All rights reserved.
//

#import "OCBorderTests.h"
#include <curses.h>
#import "OCCharacter.h"


@implementation OCBorderTests

#pragma mark - Setup
static NSAutoreleasePool *pool = nil;
- (void)setUp {
	[super setUp];
	pool = [[NSAutoreleasePool alloc] init];
}

#pragma mark - Tests
- (void)testCreationWithNilString {
	OCBorder *border;
	XCTAssertThrows((border = [OCBorder borderWithComponentString:nil]), @"FAILURE: Expected border initialization to throw exception (instead: %@).", border);
}

- (void)testCreationWithEmptyString {
	OCBorder *border;
	XCTAssertThrows((border = [OCBorder borderWithComponentString:@""]), @"FAILURE: Expected border initialization to throw exception (instead: %@).", border);
}

- (void)testCreationWithInvalidString {
	OCBorder *border;
	XCTAssertThrows((border = [OCBorder borderWithComponentString:@"123456789"]), @"FAILURE: Expected border initialization to throw exception (instead: %@).", border);
}

- (void)testCreationWithValidString {
	OCBorder *border;
	XCTAssertNoThrow((border = [OCBorder borderWithComponentString:@"12345678"]), @"FAILURE: Expected border initialization to complete correctly (instead: %@).", border);
	XCTAssertTrue(border.topLeftCorner == '1', @"border.topLeftCorner == %u", border.topLeftCorner);
	XCTAssertTrue(border.topFill == '2', @"border.topFill == %u", border.topFill);
	XCTAssertTrue(border.topRightCorner == '3', @"border.topRightCorner === 3");
	XCTAssertTrue(border.leftFill == '4', @"border.leftFill === 4");
	XCTAssertTrue(border.rightFill == '5', @"border.rightFill === 5");
	XCTAssertTrue(border.bottomLeftCorner == '6', @"border.bottomLeftCorner === 6");
	XCTAssertTrue(border.bottomFill == '7', @"border.bottomFill === 7");
	XCTAssertTrue(border.bottomRightCorner == '8', @"border.bottomRightCorner === 8");
}

- (void)testCreationWithBorderComponents {
	unsigned int array[8] = {OCCharacterUpperLeftCorner, OCCharacterHorizontalLine, OCCharacterUpperRightCorner, OCCharacterVerticalLine, OCCharacterVerticalLine, OCCharacterLowerLeftCorner, OCCharacterHorizontalLine, OCCharacterLowerRightCorner};
	OCBorder *border = [OCBorder borderWithComponents:OCBorderComponentsFromArray(array)];
	XCTAssertTrue(border.topLeftCorner == OCCharacterUpperLeftCorner, @"border.topLeftCorner === OCCharacterUpperLeftCorner");
	XCTAssertTrue(border.topFill == OCCharacterHorizontalLine, @"border.topFill === OCCharacterHorizontalLine");
	XCTAssertTrue(border.topRightCorner == OCCharacterUpperRightCorner, @"border.topRightCorner === OCCharacterUpperRightCorner");
	XCTAssertTrue(border.leftFill == OCCharacterVerticalLine, @"border.leftFill === OCCharacterVerticalLine");
	XCTAssertTrue(border.rightFill == OCCharacterVerticalLine, @"border.rightFill === OCCharacterVerticalLine");
	XCTAssertTrue(border.bottomLeftCorner == OCCharacterLowerLeftCorner, @"border.bottomLeftCorner === OCCharacterLowerLeftCorner");
	XCTAssertTrue(border.bottomFill == OCCharacterHorizontalLine, @"border.bottomFill === OCCharacterHorizontalLine");
	XCTAssertTrue(border.bottomRightCorner == OCCharacterLowerRightCorner, @"border.bottomRightCorner === OCCharacterLowerRightCorner");
}

#pragma mark - Teardown
- (void)tearDown {
	[pool drain];
	[super tearDown];
}

@end