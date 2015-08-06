//
//  MenuViewController.m
//  UserInterfaceTesting
//
//  Created by HeBinghua on 15/8/6.
//  Copyright © 2015年 Ben. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
@property (weak, nonatomic) IBOutlet UIButton *viewDetailButton;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    self.viewDetailButton.enabled = sender.on;
    self.viewDetailButton.alpha = sender.on ? 1 : 0.5;
}


@end
