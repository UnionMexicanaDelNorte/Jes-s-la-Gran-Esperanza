//
//  p4.h
//  JesusLaGranEsperanza
//
//  Created by David on 26/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface p4 : UIViewController <NSURLConnectionDelegate,UITextViewDelegate>{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UITextView *p1a;
@property (weak, nonatomic) IBOutlet UISwitch *p2a;
@property (weak, nonatomic) IBOutlet UISwitch *p2b;
@property (weak, nonatomic) IBOutlet UISwitch *p2c;
@property (weak, nonatomic) IBOutlet UISwitch *p3a;
@property (weak, nonatomic) IBOutlet UISwitch *p3b;
@property (weak, nonatomic) IBOutlet UISwitch *p3c;
@property (weak, nonatomic) IBOutlet UISwitch *p4a;
@property (weak, nonatomic) IBOutlet UISwitch *p4b;
@property (weak, nonatomic) IBOutlet UISwitch *p4c;
@property (strong, nonatomic) NSMutableString *respuesta;
- (IBAction)Enviar:(id)sender;
- (IBAction)p2a:(id)sender;
- (IBAction)p2b:(id)sender;
- (IBAction)p2c:(id)sender;
- (IBAction)p3a:(id)sender;
- (IBAction)p3b:(id)sender;
- (IBAction)p3c:(id)sender;
- (IBAction)p4a:(id)sender;
- (IBAction)p4b:(id)sender;
- (IBAction)p4c:(id)sender;
@end
