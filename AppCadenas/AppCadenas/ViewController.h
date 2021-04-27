//
//  ViewController.h
//  AppCadenas
//
//  Created by Guest User on 25/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textNombre;
@property (weak, nonatomic) IBOutlet UILabel *labelSaludar;
@property (weak, nonatomic) IBOutlet UIButton *buttonSaludar;
@property (weak, nonatomic) IBOutlet UILabel *labelPalabra;
@property (weak, nonatomic) IBOutlet UITextField *textCantVocales;
@property (weak, nonatomic) IBOutlet UIButton *buttonCheck;
@property (weak, nonatomic) IBOutlet UILabel *labelCheck;
@property (weak, nonatomic) IBOutlet UIButton *buttonMayusculas;
@property (weak, nonatomic) IBOutlet UIButton *buttonMinusculas;
@property (weak, nonatomic) IBOutlet UIButton *buttonLimpiar;

//-(IBAction)buttonSaludar:(UIButton *)sender;
-(IBAction)buttonSaludar:(id)sender;
-(IBAction)buttonCheck:(id)sender;
-(IBAction)buttonMayusculas:(id)sender;
-(IBAction)buttonMinusculas:(id)sender;
-(IBAction)buttonLimpiar:(id)sender;

-(NSMutableString *)aMayusculas:(NSMutableString *)cadena;
-(NSMutableString *)aMinusculas:(NSMutableString *)cadena;

@end

