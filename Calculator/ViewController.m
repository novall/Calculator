//
//  ViewController.m
//  Calculator
//
//  Created by Novall Khan on 1/13/14.
//  Copyright (c) 2014 Novall Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) BOOL clearNum;
@end

@implementation ViewController

//When a digit is pressed, concatenate the digits and update the label to display the numbers being added.

- (IBAction)numPressed:(UIButton *)sender {
    
    //STEP 1: Check if the equals button has already been pressed, i.e. BOOL is flipped to YES, and clear label accordingly. Flip back to NO, and proceed to Step2.
    if (self.clearNum == YES){
        self.outputLabel.text = @"";
        self.clearNum = NO;
    }
    
    //STEP 2: Allow user to continue entering digits.
    NSString *digit = sender.currentTitle;
    self.outputLabel.text = [self.outputLabel.text stringByAppendingString:digit];
    
}

//When the equals button is pressed, split the numbers by scanning for addition signs. Push the numbers into an array, convert to integers, and add.
- (IBAction)equalsPressed:(UIButton *)sender {
    
    NSArray *numArray = [self.outputLabel.text componentsSeparatedByString: @"+"];
    double sum = 0;
    for (NSString *num in numArray) {
        [num intValue];
        sum+= [num doubleValue];
    }
    
    self.outputLabel.text = [NSString stringWithFormat:@"%.0f",sum];
    
    self.clearNum = YES;
}

@end

