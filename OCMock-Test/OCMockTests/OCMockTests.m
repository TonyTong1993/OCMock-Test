//
//  OCMockTests.m
//  OCMockTests
//
//  Created by 童万华 on 2018/2/11.
//  Copyright © 2018年 童万华. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSNumber+Random.h"
#import "UserManagerCentry.h"
@interface OCMockTests : XCTestCase
@property (nonatomic,strong) UserManagerCentry *manager;
@property (nonatomic,strong) XCTestExpectation *exp;
@end

@implementation OCMockTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.manager = [UserManagerCentry new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSDictionary *data = @{@"userIdentifier":@(123456),@"userName":@"tony",@"sex":@(1),@"avatarURL":@"http:localhost:8081/",@"motto":@"我爱你"};
    [self.manager setValuesForKeysWithDictionary:data];
    NSLog(@"name = %@",self.manager.userName);
    //异步测试
//   self.exp = [[XCTestExpectation alloc] initWithDescription:@"block异步测试：删除用户数据"];
//    __weak typeof(self) weakSelf = self;
//    [self.manager sendDeleteUserInfoRequest:^(NSError *error, id response) {
//        if (response) {
//            [weakSelf.exp fulfill];
//        }
//    }];
//    [self waitForExpectations:@[self.exp] timeout:2.0f];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
