//
//  datosViewController.h
//  JesusLaGranEsperanza
//
//  Created by David on 10/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface datosViewController : UIViewController<NSURLConnectionDelegate, UIAlertViewDelegate,UITextFieldDelegate>
{
    NSMutableData *_responseData;
}
@property (weak, nonatomic) IBOutlet UITextField *usrName;
@property (weak, nonatomic) IBOutlet UITextField *usrMail;
@property (weak, nonatomic) IBOutlet UITextField *instMail;
@property (weak, nonatomic) UITextField *currentResponder;

- (IBAction)Guardar:(id)sender;
- (IBAction)textfieldreturn:(id)sender;
- (IBAction)AvisoDePrivacidad:(id)sender;

@end
