//
//  OCMock_TestTests.m
//  OCMock-TestTests
//
//  Created by 童万华 on 2018/2/10.
//  Copyright © 2018年 童万华. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "ViewController.h"
@protocol SomeProtocol<NSObject>
@end
@interface OCMock_TestTests : XCTestCase

@end

@implementation OCMock_TestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    id viewControllerMock = OCMClassMock([ViewController class]);
    id protocolMock = OCMProtocolMock(@protocol(SomeProtocol));
    
    id classMock = OCMStrictClassMock([ViewController class]);
    id strictProtocl = OCMStrictProtocolMock(@protocol(SomeProtocol));
    ViewController *viewController = [ViewController new];
    id partialMock = OCMPartialMock(viewController);
    
    id observerMock = OCMObserverMock();
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
