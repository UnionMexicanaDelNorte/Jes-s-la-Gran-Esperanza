//
//  AppDelegate.h
//  JesusLaGranEsperanza
//
//  Created by David on 25/02/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
   }

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSUserDefaults *Datos;
@property (strong, nonatomic) NSString *leccionName;
@property (strong, nonatomic) NSString *leccionVideo;
@property BOOL firstRun;

@end
