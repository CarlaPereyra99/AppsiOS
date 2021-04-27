//
//  ViewController.m
//  appCalculadora
//
//  Created by Guest User on 26/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//Métodos operaciones bàsicas
//-(IBAction)btnSuma:(UIButton *)sender
-(IBAction)setBtnSuma:(id)sender
{
    float num1 = [_textNum1.text floatValue];
    float num2 = [_textNum2.text floatValue];
    float result = num1 + num2;
    
    _labelResultado.text = [NSString stringWithFormat:@"%.3f", result];
}

-(IBAction)btnResta:(id)sender
{
    float num1 = [_textNum1.text floatValue];
    float num2 = [_textNum2.text floatValue];
    float result = num1 - num2;
    
    _labelResultado.text = [NSString stringWithFormat:@"%f", result];
}

-(IBAction)btnMult:(id)sender
{
    float num1 = [_textNum1.text floatValue];
    float num2 = [_textNum2.text floatValue];
    float result = num1 * num2;
    
    _labelResultado.text = [NSString stringWithFormat:@"%f", result];
}

-(IBAction)btnDiv:(id)sender
{
    float num1 = [_textNum1.text floatValue];
    float num2 = [_textNum2.text floatValue];
    float result = num1 / num2;
    
    _labelResultado.text = [NSString stringWithFormat:@"%f", result];
}

-(IBAction)btnPotencia:(id)sender
{
    float num = [_textNum1.text floatValue];
    double potencia = pow(num, _textNum2.text.floatValue);
    
    _labelResultado.text = [NSString stringWithFormat:@"%f", potencia];
}

@end
