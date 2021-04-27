//
//  ViewController.h
//  appCalculadora
//
//  Created by Guest User on 26/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//.::Operaciones básicas::.
@property (weak, nonatomic) IBOutlet UITextField *textNum1;
@property (weak, nonatomic) IBOutlet UITextField *textNum2;
@property (weak, nonatomic) IBOutlet UILabel *labelResultado;
//Botones
@property (weak, nonatomic) IBOutlet UIButton *btnSuma;
@property (weak, nonatomic) IBOutlet UIButton *btnResta;
@property (weak, nonatomic) IBOutlet UIButton *btnMult;
@property (weak, nonatomic) IBOutlet UIButton *btnDiv;
@property (weak, nonatomic) IBOutlet UIButton *btnPotencia;


//.::Métodos::.
//Botones
-(IBAction)setBtnSuma:(id)sender;
-(IBAction)btnResta:(id)sender;
-(IBAction)btnMult:(id)sender;
-(IBAction)btnDiv:(id)sender;
-(IBAction)btnPotencia:(id)sender;

@end

