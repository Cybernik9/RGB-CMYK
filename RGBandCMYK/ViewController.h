//
//  ViewController.h
//  RGBandCMYK
//
//  Created by Admin on 10.05.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lableRGB;
@property (weak, nonatomic) IBOutlet UILabel *lableCMYK;

@property (weak, nonatomic) IBOutlet UIView *viewRGB;
@property (weak, nonatomic) IBOutlet UIView *viewCMYK;

@property (weak, nonatomic) IBOutlet UISlider *sliderRed;
@property (weak, nonatomic) IBOutlet UISlider *sliderGreen;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlue;

@property (weak, nonatomic) IBOutlet UISlider *sliderCyan;
@property (weak, nonatomic) IBOutlet UISlider *sliderMagenta;
@property (weak, nonatomic) IBOutlet UISlider *sliderYellow;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlack;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *lableRed;
@property (weak, nonatomic) IBOutlet UILabel *lableGreen;
@property (weak, nonatomic) IBOutlet UILabel *lableBlue;

- (IBAction)actionSliderRedGreenBlue:(UISlider *)sender;
- (IBAction)actionCMYK:(UISlider *)sender;

- (IBAction)actionsAll:(UISegmentedControl *)sender;


@end

