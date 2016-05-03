//
//  p16.h
//  JesusLaGranEsperanza
//
//  Created by David on 30/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface p16 : UIViewController<NSURLConnectionDelegate,UITextViewDelegate>{
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
@property (weak, nonatomic) IBOutlet UITextView *p2a;

@property (weak, nonatomic) IBOutlet UILabel *p3;
@property (weak, nonatomic) IBOutlet UILabel *p3ar;
@property (weak, nonatomic) IBOutlet UILabel *p3br;
@property (weak, nonatomic) IBOutlet UILabel *p3cr;
@property (weak, nonatomic) IBOutlet UISwitch *p3a;
@property (weak, nonatomic) IBOutlet UISwitch *p3b;
@property (weak, nonatomic) IBOutlet UISwitch *p3c;
@property (strong, nonatomic) NSMutableString *respuesta;
- (IBAction)p1a:(id)sender;
- (IBAction)p1b:(id)sender;
- (IBAction)p1c:(id)sender;
- (IBAction)p3a:(id)sender;
- (IBAction)p3b:(id)sender;
- (IBAction)p3c:(id)sender;
- (IBAction)enviar:(id)sender;
@end
