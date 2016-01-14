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

@property (weak, nonatomic) IBOutlet UILabel *ageSliderValueLabel;
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
@property (weak, nonatomic) IBOutlet UILabel *youngEmojiSliderCap;
@property (weak, nonatomic) IBOutlet UILabel *oldEmojiSliderCap;

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
    
    [self changeBackgroundColorWithValue];
}

- (IBAction)ageSliderValueChanged:(id)sender
{
    NSInteger makeNumbersWhole = 10;
    CGFloat ageValue = self.ageSlider.value * makeNumbersWhole;
    self.ageSliderValueLabel.text = [NSString stringWithFormat:@"%f", ageValue];

    [self changeBackgroundColorWithValue];
}

- (void)changeBackgroundColorWithValue
{
    self.view.backgroundColor = [UIColor colorWithHue:self.genderSlider.value saturation:self.ageSlider.value brightness:1.0 alpha:1.0];
}

@end
