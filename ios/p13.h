//
//  p13.h
//  JesusLaGranEsperanza
//
//  Created by David on 28/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface p13 : UIViewController<NSURLConnectionDelegate,UITextFieldDelegate>{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UILabel *p1;
@property (weak, nonatomic) IBOutlet UILabel *p1ar;
@property (weak, nonatomic) IBOutlet UILabel *p1br;
@property (weak, nonatomic) IBOutlet UILabel *p1cr;
@property (weak, nonatomic) IBOutlet UISwitch *p1a;
@property (weak, nonatomic) IBOutlet UISwitch *p1b;
@property (weak, nonatomic) IBOutlet UISwitch *p1c;
@property (weak, nonatomic) IBOutlet UILabel *p2;
@property (weak, nonatomic) IBOutlet UILabel *p2ar;
@property (weak, nonatomic) IBOutlet UILabel *p2br;
@property (weak, nonatomic) IBOutlet UILabel *p2cr;
@property (weak, nonatomic) IBOutlet UISwitch *p2a;
@property (weak, nonatomic) IBOutlet UISwitch *p2b;
@property (weak, nonatomic) IBOutlet UISwitch *p2c;
@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UITextField *p3a;
@property (weak, nonatomic) IBOutlet UITextField *p3b;
@property (weak, nonatomic) IBOutlet UITextField *p3c;
@property (weak, nonatomic) IBOutlet UITextField *p3d;
- (IBAction)p1a:(id)sender;
- (IBAction)p1b:(id)sender;
- (IBAction)p1c:(id)sender;
- (IBAction)p2a:(id)sender;
- (IBAction)p2b:(id)sender;
- (IBAction)p2c:(id)sender;
@property (strong, nonatomic)  NSMutableString *respuesta;

- (IBAction)enviar:(id)sender;
@end