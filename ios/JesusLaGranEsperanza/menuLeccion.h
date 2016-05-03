//
//  menuLeccion.h
//  JesusLaGranEsperanza
//
//  Created by David on 30/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface menuLeccion : UIViewController
@property (nonatomic, strong) NSString *leccionName;
@property NSInteger numeroDeLeccion;
@property (weak, nonatomic) IBOutlet UINavigationItem *tituloLeccion;
- (IBAction)envi:(id)sender;
- (IBAction)video:(id)sender;
@end
