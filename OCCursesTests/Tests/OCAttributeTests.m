//
//  OCAttributeTests.m
//  OCCurses
//
//  Created by Itai Ferber on 3/18/11.
//  Copyright 2011 Itai Ferber. All rights reserved.
//

#import "OCAttributeTests.h"


@implementation OCAttributeTests

#pragma mark - Setup
- (void)setUp
{
    [super setUp];
}

#pragma mark - Tests
- (void)testCreationWithValidAttributeIdentifier {
	OCAttribute *attribute = [OCAttribute attributeWithAttributeIdentifier:OCAttributeNormal];
	XCTAssertNotNil(attribute, @"FAILURE: Expected attribute to be initialized correctly (instead %@)!", attribute);
	XCTAssertEqual(attribute.attributeIdentifier, OCAttributeNormal, @"FAILURE: Expected attribute identifier to be normal (instead %lu)!", (unsigned long)attribute.attributeIdentifier);
}

#pragma mark - Teardown
- (void)tearDown
{
    [super tearDown];
}

@end