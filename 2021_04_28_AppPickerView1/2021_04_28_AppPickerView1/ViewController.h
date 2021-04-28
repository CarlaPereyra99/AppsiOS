//
//  ViewController.h
//  2021_04_28_AppPickerView1
//
//  Created by Guest User on 28/04/21.
//  Copyright © 2021 Guest User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *labelEtiqueta1;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;


@end

