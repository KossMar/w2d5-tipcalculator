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
@property (weak, nonatomic) IBOutlet UITextField *percentageAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountTextField.delegate = self;
    self.percentageAmountTextField.delegate = self;
    [self setupTextField:self.billAmountTextField];
    [self setupTextField:self.percentageAmountTextField];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTextField:(UITextField*)textField {
    textField.keyboardType = UIKeyboardTypeDefault;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    // clears the text
    NSLog(@"In textFieldDidBeginEditing:");
    textField.text = @"";
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
}



- (IBAction)calculateTip:(id)sender {
    
    float tip = [self.billAmountTextField.text floatValue] * ([self.percentageAmountTextField.text floatValue] * 0.01);
    NSString *tipString = [NSString stringWithFormat:@"%.02f",tip];
    self.tipAmountLabel.text = tipString;
    [self.billAmountTextField resignFirstResponder];
    [self.percentageAmountTextField resignFirstResponder];

}

@end
