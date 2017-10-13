//
//  ViewController.m
//  TipCalculator
//
//  Created by Mar Koss on 2017-10-13.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountTextField.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    // clears the text
    NSLog(@"In textFieldDidBeginEditing:");
    self.billAmountTextField.text = @"";
}

- (IBAction)calculateTip:(id)sender {
    
    float tip = [self.billAmountTextField.text floatValue] * 0.15;
    NSString *tipString = [NSString stringWithFormat:@"%.02f",tip];
    self.tipAmountLabel.text = tipString;
}

@end
