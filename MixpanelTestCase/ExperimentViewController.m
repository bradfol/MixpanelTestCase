//
//  ExperimentViewController.m
//  MixpanelTestCase
//
//  Created by Brad Fol on 4/29/15.
//  Copyright (c) 2015 Brad Fol. All rights reserved.
//

#import "ExperimentViewController.h"
#import <Mixpanel.h>
#import <Mixpanel/MPTweakInline.h>

@interface ExperimentViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ExperimentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setVariant:MPTweakValue(@"Variant number", 0)];
}

- (void)setVariant:(int)i {
    NSString *string;
    switch (i) {
        case 0:
            string = @"zero";
            break;
        case 1:
            string = @"one";
            break;
        case 2:
            string = @"two";
            break;
    }
    self.label.text = string;
}

- (IBAction)successfulConversionAction {
    [[Mixpanel sharedInstance] track:@"Successful conversion"];
}

- (IBAction)closeAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
