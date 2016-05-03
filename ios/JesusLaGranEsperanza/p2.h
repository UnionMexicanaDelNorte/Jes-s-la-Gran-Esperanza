//
//  p2.h
//  JesusLaGranEsperanza
//
//  Created by David on 26/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface p2 : UIViewController<NSURLConnectionDelegate,UITextViewDelegate>{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UIScrollView *Scroll;
@property (weak, nonatomic) IBOutlet UISwitch *p1a;
@property (weak, nonatomic) IBOutlet UISwitch *p1b;
@property (weak, nonatomic) IBOutlet UISwitch *p1c;
@property (weak, nonatomic) IBOutlet UISwitch *p2a;
@property (weak, nonatomic) IBOutlet UISwitch *p2b;
@property (weak, nonatomic) IBOutlet UISwitch *p2c;
@property (weak, nonatomic) IBOutlet UITextView *p3a;
- (IBAction)p1a:(id)sender;
- (IBAction)p1b:(id)sender;
- (IBAction)p1c:(id)sender;
- (IBAction)p2a:(id)sender;
- (IBAction)p2b:(id)sender;
- (IBAction)p2c:(id)sender;
- (IBAction)Enviar:(id)sender;
@property (strong, nonatomic) NSMutableString *respuesta;

@end
