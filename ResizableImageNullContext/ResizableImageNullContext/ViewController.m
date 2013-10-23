//
//  ViewController.m
//  ResizableImageNullContext
//
//  Created by Mark Goody on 23/10/2013.
//  Copyright (c) 2013 GCD Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) UIEdgeInsets insets;
@property (nonatomic, strong) UIImage *baseImage;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.baseImage = [UIImage imageNamed:@"selected-bg"];
	
	self.topStepper.value = 0;
	self.leftStepper.value = 0;
	self.bottomStepper.value = 0;
	self.rightStepper.value = 0;
	
	[self refreshDisplay];
}

- (void)refreshDisplay
{
	self.insets = (UIEdgeInsets){
		.top = self.topStepper.value,
		.left = self.leftStepper.value,
		.bottom = self.bottomStepper.value,
		.right = self.rightStepper.value
	};
	
	self.topLabel.text = [NSString stringWithFormat:@"%.0f", self.insets.top];
	self.leftLabel.text = [NSString stringWithFormat:@"%.0f", self.insets.left];
	self.bottomLabel.text = [NSString stringWithFormat:@"%.0f", self.insets.bottom];
	self.rightLabel.text = [NSString stringWithFormat:@"%.0f", self.insets.right];
	
	self.imageView.image = [self.baseImage resizableImageWithCapInsets:self.insets];
	
	if (self.insets.top + self.insets.bottom >= self.baseImage.size.height ||
		self.insets.left + self.insets.right >= self.baseImage.size.width) {
		self.imageLabel.textColor = [UIColor redColor];
	}
	else {
		self.imageLabel.textColor = [UIColor blackColor];
	}
}

- (IBAction)stepperChanged:(UIStepper *)sender
{
	[self refreshDisplay];
}

@end
