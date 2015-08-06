//
//  DetailViewController.m
//  UserInterfaceTesting
//
//  Created by HeBinghua on 15/8/6.
//  Copyright © 2015年 Ben. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic) NSInteger value;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.value = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementTapped:(UIButton *)sender {
    self.value ++;
    self.valueLabel.text = @(self.value).stringValue;
    self.valueLabel.accessibilityValue = self.valueLabel.text;
}

@end
