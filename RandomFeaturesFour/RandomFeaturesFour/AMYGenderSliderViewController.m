//
//  AMYGenderSliderViewController.m
//  RandomFeaturesFour
//
//  Created by Amy Joscelyn on 1/14/16.
//  Copyright © 2016 Amy Joscelyn. All rights reserved.
//

#import "AMYGenderSliderViewController.h"

@interface AMYGenderSliderViewController ()

@property (weak, nonatomic) IBOutlet UILabel *genderSliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *genderSlider;

@end

@implementation AMYGenderSliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)genderSliderValueChanged:(id)sender
{
    NSInteger makeNumbersWhole = 10;
    CGFloat genderValue = self.genderSlider.value * makeNumbersWhole;
    self.genderSliderValueLabel.text = [NSString stringWithFormat:@"%f", genderValue];
}

@end
