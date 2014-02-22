//
//  ATTCViewController.m
//  MidnightFlasher
//
//  Created by AJ Caldwell on 11/28/13.
//  Copyright (c) 2013 AJ Caldwell. All rights reserved.
//

#import "MNFViewController.h"

@interface MNFViewController ()
@property (weak, nonatomic) IBOutlet UIButton *twelveButton;
@property (weak, nonatomic) IBOutlet UIButton *AMButton;
@property NSTimer *timer;
@property BOOL color;
@end

@implementation MNFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5f
                                                  target:self
                                                selector:@selector(flash)
                                                userInfo:nil 
                                                 repeats:YES];
}
- (void) flash {
    if (self.color) {
        self.view.backgroundColor = [UIColor blackColor];
        [self.twelveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.AMButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.color = NO;
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        [self.twelveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.AMButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.color = YES;
    }
}
@end
