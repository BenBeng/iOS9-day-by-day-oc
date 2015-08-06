//
//  UserInterfaceTestingUITests.m
//  UserInterfaceTestingUITests
//
//  Created by HeBinghua on 15/8/6.
//  Copyright © 2015年 Ben. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UserInterfaceTestingUITests : XCTestCase

@end

@implementation UserInterfaceTestingUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testTapViewDetailWhenSwitchIsOffDoesNothing {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Change the switch to off.
    [app.switches[@"View Detail Enabled Switch"] tap];
    
    // Tap the view detail button.
    [app.buttons[@"View Detail"] tap];
    
    // Verify that nothing has happened and we are still at the menu scren.
    XCTAssertEqualObjects(app.navigationBars.element.identifier, @"Menu");
}

- (void)testTapViewDetailWhenSwitchIsOnNavigatesToDetailViewController {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Tap the view detail button.
    [app.buttons[@"View Detail"] tap];
    
    // Verify that navigation occurred and we are at the detail screen.
    XCTAssertEqualObjects(app.navigationBars.element.identifier, @"Detail");
}

- (void)testTapIncrementButtonIncrementsValueLabel {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // Tap the view detail button.
    [app.buttons[@"View Detail"] tap];
    
    // Store the increment value button and the value label as we will use them a lot.
    XCUIElement *incrementButton = app.buttons[@"Increment Value"];
    XCUIElement *valueLabel = app.staticTexts[@"Number Value Label"];
    
    for (int index = 0; index < 10; index++) {
        // Tap the increment value button.
        [incrementButton tap];
        
        // Ensure that the value has increased by 1.
        XCTAssertEqualObjects((NSString *)(valueLabel.value), @(index+1).stringValue);
    }
}
@end
