//
//  ViewController.m
//  TipCalculator
//
//  Created by Kelo Akalamudo on 10/30/15.
//  Copyright © 2015 Kelo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTip;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (weak, nonatomic) IBOutlet UITextField *tipOption;

@property CGFloat bill;
@property CGFloat userTip;


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


- (IBAction)calculateTipButtonPressed:(id)sender {
    
    double billDouble = [_billAmountTextField.text doubleValue];
    _bill =  (CGFloat) billDouble;
    NSLog(@"Bill: %f", billDouble);
    
    
    
    if (_tipOption.text.length > 0) {
        double tip = [_tipOption.text doubleValue];
        _userTip =  (CGFloat) tip;
        NSLog(@"User Tip: %f", tip);
        CGFloat value = _bill * (_userTip/100);
        CGFloat total = value +_bill;
        NSLog(@"Value: %f  total: %f", value,total);
        _tipAmountLabel.text = [NSString stringWithFormat: @"$%.2f", total];
        
    }else{
        CGFloat value = _bill*0.15;
        CGFloat total = value +_bill;
        NSLog(@"Value: %f  total: %f", value,total);
        _tipAmountLabel.text = [NSString stringWithFormat: @"$%.2f", total];
    }
    
    
}

@end
