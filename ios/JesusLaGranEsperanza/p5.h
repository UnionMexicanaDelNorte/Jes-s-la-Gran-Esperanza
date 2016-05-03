//
//  p5.h
//  JesusLaGranEsperanza
//
//  Created by David on 26/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface p5 : UIViewController<NSURLConnectionDelegate,UITextFieldDelegate,UITextViewDelegate>{
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
@property (weak, nonatomic) IBOutlet UITextField *p2a;
@property (weak, nonatomic) IBOutlet UITextField *p2b;
@property (weak, nonatomic) IBOutlet UITextField *p2c;
@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UITextField *p3a;
@property (weak, nonatomic) IBOutlet UITextField *p3b;
@property (weak, nonatomic) IBOutlet UITextField *p3c;
@property (weak, nonatomic) IBOutlet UILabel *p4;
@property (weak, nonatomic) IBOutlet UITextView *p4a;
- (IBAction)p1a:(id)sender;
- (IBAction)p1b:(id)sender;
- (IBAction)p1c:(id)sender;

- (IBAction)enviar:(id)sender;
@property (strong, nonatomic)  NSMutableString *respuesta;
@end
