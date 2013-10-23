//
//  ViewController.h
//  ResizableImageNullContext
//
//  Created by Mark Goody on 23/10/2013.
//  Copyright (c) 2013 GCD Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UIStepper *topStepper;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UIStepper *leftStepper;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
@property (weak, nonatomic) IBOutlet UIStepper *bottomStepper;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UIStepper *rightStepper;
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;

- (IBAction)stepperChanged:(UIStepper *)sender;

@end
