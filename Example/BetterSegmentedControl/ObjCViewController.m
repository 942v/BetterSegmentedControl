//
//  ObjCViewController.m
//  BetterSegmentedControl_Example
//
//  Created by Guillermo Saenz on 11/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

#import "ObjCViewController.h"

@import BetterSegmentedControl;

@interface ObjCViewController () <BetterSegmentedControlDelegate>

@property (weak, nonatomic) IBOutlet BetterSegmentedControl *control1;

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.control1.delegate = self;
}

#pragma mark - <BetterSegmentedControlDelegate>

- (void)betterSegmentedControlDidScrollWithOffsetWithBetterSegmentedControl:(BetterSegmentedControl *)betterSegmentedControl
                                                                     offset:(CGFloat)offset {
    NSLog(@"offset: %f", offset);
}

#pragma mark - Actions

- (IBAction)doChangeIndexAction:(id)sender {
    
    [self.control1 setIndexWithNoError:!self.control1.index
                              animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
