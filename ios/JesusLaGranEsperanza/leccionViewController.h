//
//  leccionViewController.h
//  JesusLaGranEsperanza
//
//  Created by David on 27/02/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface leccionViewController : UIViewController
{
    NSString *Texto;
}
@property (strong, nonatomic) IBOutlet UITextView *leccionTextV;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *barCompartir;
@property (nonatomic, strong) NSString *leccionName;
@property (weak, nonatomic) IBOutlet UINavigationItem *tituloLeccion;
@property (nonatomic, strong) NSString *url;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)distanceSlider:(UISlider *)sender;
- (IBAction)compartirLeccion ;
@property NSInteger numeroDeLeccion;


@end
