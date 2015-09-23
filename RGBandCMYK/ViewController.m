//
//  ViewController.m
//  RGBandCMYK
//
//  Created by Admin on 10.05.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)actionSliderRedGreenBlue:(UISlider *)sender {
    
    [self actionsAll:(UISegmentedControl *) sender];
}

- (IBAction)actionCMYK:(UISlider *)sender {
    
    CGColorSpaceRef cmykColorSpace = CGColorSpaceCreateDeviceCMYK();
    CGFloat colors[5] = {self.sliderCyan.value, self.sliderMagenta.value, self.sliderYellow.value, self.sliderBlack.value, 1.f}; // CMYK+Alpha
    CGColorRef cgColor = CGColorCreate(cmykColorSpace, colors);
    UIColor *uiColor = [UIColor colorWithCGColor:cgColor];
    CGColorRelease(cgColor);
    CGColorSpaceRelease(cmykColorSpace);
    
    self.lableCMYK.text = [NSString stringWithFormat:@"CMYK: {%.f, %.f, %.f, %.f}",
                           self.sliderCyan.value * 100,
                           self.sliderMagenta.value * 100,
                           self.sliderYellow.value*100,
                           self.sliderBlack.value * 100];
    
    self.viewCMYK.backgroundColor = uiColor;
    
}

- (IBAction)actionsAll:(UISegmentedControl *)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
            [self colorRGB];
            break;
        case 1:
            [self colorHSB];
            break;
        default: 
            break; 
    }
    
}

-(void) colorRGB {
    
    CGFloat red = self.sliderRed.value;
    CGFloat green = self.sliderGreen.value;
    CGFloat blue = self.sliderBlue.value;
    
    UIColor* color = nil;
    
    color = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
    
    self.lableRGB.text = [NSString stringWithFormat:@"RGB: {%.f, %.f, %.f}",
                          self.sliderRed.value * 255,
                          self.sliderGreen.value * 255,
                          self.sliderBlue.value * 255];
    
    self.lableRed.text = [NSString stringWithFormat:@"Red"];
    self.lableGreen.text = [NSString stringWithFormat:@"Green"];
    self.lableBlue.text = [NSString stringWithFormat:@"Blue"];
    
    self.viewRGB.backgroundColor = color;
    
}

- (void) colorHSB {
    
    CGFloat hue = self.sliderRed.value;
    CGFloat saturation = self.sliderGreen.value;
    CGFloat brightness = self.sliderBlue.value;
    
    UIColor* color = nil;
    
    color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1.f];
    
    self.lableRGB.text = [NSString stringWithFormat:@"HSB: {%.f, %.f, %.f}",
                          self.sliderRed.value * 360,
                          self.sliderGreen.value * 100,
                          self.sliderBlue.value * 100];
    
    self.lableRed.text = [NSString stringWithFormat:@"Hue"];
    self.lableGreen.text = [NSString stringWithFormat:@"Stur."];
    self.lableBlue.text = [NSString stringWithFormat:@"Brig."];
    
    self.viewRGB.backgroundColor = color;
    
}

- (void) colorLab {
    
    CGFloat a = self.sliderRed.value;
    CGFloat b = self.sliderGreen.value;
    CGFloat l = self.sliderBlue.value;
    
    UIColor* colorA = nil;
    UIColor* colorB = nil;
    UIColor* colorL = nil;
    
    if (a >= 0) {
        colorA = [UIColor colorWithRed:a green:0 blue:0 alpha:1.f];
    } else {
        colorA = [UIColor colorWithRed:0 green:a*(-1) blue:0 alpha:1.f];
    }
    if (b >= 0) {
        colorA = [UIColor colorWithRed:a green:0 blue:0 alpha:1.f];
    } else {
        colorA = [UIColor colorWithRed:0 green:a*(-1) blue:0 alpha:1.f];
    }
    colorL = [UIColor colorWithHue:0 saturation:0 brightness:l alpha:1.f];
    
    self.lableRGB.text = [NSString stringWithFormat:@"LAB: {%.f, %.f, %.f}",
                          self.sliderRed.value * 360,
                          self.sliderGreen.value * 100,
                          self.sliderBlue.value * 100];
    
    self.lableRed.text = [NSString stringWithFormat:@"A"];
    self.lableGreen.text = [NSString stringWithFormat:@"B"];
    self.lableBlue.text = [NSString stringWithFormat:@"Lumin."];
    
    //self.viewRGB.backgroundColor = color;

    
}

@end
