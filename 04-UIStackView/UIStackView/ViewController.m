//
//  ViewController.m
//  UIStackView
//
//  Created by HeBinghua on 15/9/14.
//  Copyright © 2015年 Ben. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStackView *peopleStackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alignmentSegmentSelected:(UISegmentedControl *)sender {
    [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        if (sender.selectedSegmentIndex == 0) {
            self.peopleStackView.alignment = UIStackViewAlignmentFill;
        }else if (sender.selectedSegmentIndex == 1) {
            self.peopleStackView.alignment = UIStackViewAlignmentTop;
        }else if (sender.selectedSegmentIndex == 2) {
            self.peopleStackView.alignment = UIStackViewAlignmentCenter;
        }else if (sender.selectedSegmentIndex == 3) {
            self.peopleStackView.alignment = UIStackViewAlignmentBottom;
        }
    } completion:nil];
}

- (IBAction)distributionSegmentSelected:(UISegmentedControl *)sender {
    [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        if (sender.selectedSegmentIndex == 0) {
            self.peopleStackView.distribution = UIStackViewDistributionFill;
        }else if (sender.selectedSegmentIndex == 1) {
            self.peopleStackView.distribution = UIStackViewDistributionFillEqually;
        }else if (sender.selectedSegmentIndex == 2) {
            self.peopleStackView.distribution = UIStackViewDistributionFillProportionally;
        }else if (sender.selectedSegmentIndex == 3) {
            self.peopleStackView.distribution = UIStackViewDistributionEqualSpacing;
        }else if (sender.selectedSegmentIndex == 4) {
            self.peopleStackView.distribution = UIStackViewDistributionEqualCentering;
        }
    } completion:nil];
}
@end
