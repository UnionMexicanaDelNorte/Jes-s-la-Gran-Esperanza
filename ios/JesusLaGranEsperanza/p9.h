//
//  p9.h
//  JesusLaGranEsperanza
//
//  Created by David on 28/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface p9 : UIViewController<NSURLConnectionDelegate, UITextFieldDelegate>{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UILabel *p1;
@property (weak, nonatomic) IBOutlet UITextField *p1a;
@property (weak, nonatomic) IBOutlet UITextField *p1b;
@property (weak, nonatomic) IBOutlet UILabel *p2;
@property (weak, nonatomic) IBOutlet UILabel *p2ar;
@property (weak, nonatomic) IBOutlet UILabel *p2br;
@property (weak, nonatomic) IBOutlet UILabel *p2cr;
@property (weak, nonatomic) IBOutlet UISwitch *p2a;
@property (weak, nonatomic) IBOutlet UISwitch *p2b;
@property (weak, nonatomic) IBOutlet UISwitch *p2c;
- (IBAction)enviar:(id)sender;
- (IBAction)p2a:(id)sender;
- (IBAction)p2b:(id)sender;
- (IBAction)p2c:(id)sender;
@property (strong, nonatomic) IBOutlet NSMutableString *respuesta;
@end
