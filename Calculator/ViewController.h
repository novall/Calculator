//
//  ViewController.h
//  Calculator
//
//  Created by Novall Khan on 1/13/14.
//  Copyright (c) 2014 Novall Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

- (IBAction)numPressed:(UIButton *)sender;

- (IBAction)equalsPressed:(UIButton *)sender;

@end
