//
//  ViewController.m
//  2021_04_28_AppPickerView1
//
//  Created by Guest User on 28/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *productos;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    productos = @[@"Pantalla LCD", @"Teclado mac", @"Laptop gamer", @"MacBook Pro", @"USB 64 GB", @"Pantalla LED"];
    
    _pickerView1.dataSource = self;
    self.pickerView1.delegate = self;
    //self.labelEtiqueta1.text = productos[0];
    _labelEtiqueta1.text = productos[0];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return productos.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return productos[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _labelEtiqueta1.text = productos[row];
}

@end
