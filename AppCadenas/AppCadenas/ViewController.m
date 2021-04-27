//
//  ViewController.m
//  AppCadenas
//
//  Created by Guest User on 25/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _labelPalabra.text = @"computadora";
}

-(IBAction)buttonSaludar:(id)sender
{
    NSString *nombre=_textNombre.text;
    //NSMutableString *cad=[@"Hola ", nombre];
    
    _labelSaludar.text = [@"Hola " stringByAppendingString:nombre];
}

-(IBAction)buttonCheck:(id)sender
{
    if([_textCantVocales.text isEqualToString:@"5"])
        _labelCheck.text = @"Correcto :D";
    else
        _labelCheck.text = @"incorrecto D:";
}

-(IBAction)buttonMayusculas:(id)sender
{
    NSMutableString *cad=_textNombre.text.mutableCopy;
    NSMutableString *cadaux=[self aMayusculas:cad];
    
    _textNombre.text = cadaux;
    _labelSaludar.text = cadaux;
    _labelPalabra.text = cadaux;
}

-(IBAction)buttonMinusculas:(id)sender
{
    NSMutableString *cad=_textNombre.text.mutableCopy;
    NSMutableString *cadaux=[self aMinusculas:cad];
    
    _textNombre.text = cadaux;
    _labelSaludar.text = cadaux;
    _labelPalabra.text = cadaux;
}

-(IBAction)buttonLimpiar:(id)sender
{
    _textNombre.text = @"";
    _labelSaludar.text = @"";
    _labelPalabra.text = @"";
    _labelCheck.text = @"";
}

-(NSMutableString *)aMayusculas:(NSMutableString *)cadena
{
    NSInteger indice=cadena.length;
    NSMutableString *string1;
    int i=0;
    
    while(i < indice)
    {
        unichar letra=[cadena characterAtIndex:i];
        
        if(letra >= 'a' && letra <= 'z')
        {
            letra -= 32;
            string1 = [NSMutableString stringWithCharacters:&letra length:1];
            [cadena replaceCharactersInRange:NSMakeRange(i, 1) withString:string1];
        }
        
        i++;
    }
    
    return cadena;
}

-(NSMutableString *)aMinusculas:(NSMutableString *)cadena
{
    NSInteger indice=cadena.length;
    NSMutableString *string1;
    int i=0;
    
    while(i < indice)
    {
        unichar letra=[cadena characterAtIndex:i];
        
        if(letra >= 'a' && letra <= 'z')
        {
            letra += 32;
            string1 = [NSMutableString stringWithCharacters:&letra length:1];
            [cadena replaceCharactersInRange:NSMakeRange(i, 1) withString:string1];
        }
        
        i++;
    }
    
    return cadena;
}

@end
