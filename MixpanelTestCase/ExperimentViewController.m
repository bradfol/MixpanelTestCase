//
//  ExperimentViewController.m
//  MixpanelTestCase
//
//  Created by Brad Fol on 4/29/15.
//  Copyright (c) 2015 Brad Fol. All rights reserved.
//

#import "ExperimentViewController.h"

@interface ExperimentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ExperimentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)successfulConversionAction {
    [[Mixpanel sharedInstance] track:@"Successful conversion"];
}

- (IBAction)closeAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
