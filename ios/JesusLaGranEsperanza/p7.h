//
//  p7.h
//  JesusLaGranEsperanza
//
//  Created by David on 28/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface p7 : UIViewController<NSURLConnectionDelegate, UITextFieldDelegate>{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UILabel *p1;
@property (weak, nonatomic) IBOutlet UITextField *p1a;
@property (weak, nonatomic) IBOutlet UITextField *p1b;
@property (weak, nonatomic) IBOutlet UITextField *p1c;
@property (weak, nonatomic) IBOutlet UILabel *p2;
@property (weak, nonatomic) IBOutlet UILabel *p2ar;
@property (weak, nonatomic) IBOutlet UILabel *p2br;
@property (weak, nonatomic) IBOutlet UILabel *p2cr;
@property (weak, nonatomic) IBOutlet UISwitch *p2a;
@property (weak, nonatomic) IBOutlet UISwitch *p2b;
@property (weak, nonatomic) IBOutlet UISwitch *p2c;
@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UILabel *p3ar;
@property (weak, nonatomic) IBOutlet UILabel *p3br;
@property (weak, nonatomic) IBOutlet UILabel *p3cr;
@property (weak, nonatomic) IBOutlet UISwitch *p3a;
@property (weak, nonatomic) IBOutlet UISwitch *p3b;
@property (weak, nonatomic) IBOutlet UISwitch *p3c;
@property (strong, nonatomic) IBOutlet NSMutableString *respuesta;
- (IBAction)p2a:(id)sender;
- (IBAction)p2b:(id)sender;
- (IBAction)p2c:(id)sender;
- (IBAction)p3a:(id)sender;
- (IBAction)p3b:(id)sender;
- (IBAction)p3c:(id)sender;
- (IBAction)enviar:(id)sender;
@end
