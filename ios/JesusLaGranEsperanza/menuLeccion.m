//
//  menuLeccion.m
//  JesusLaGranEsperanza
//
//  Created by David on 30/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "menuLeccion.h"
#import "AppDelegate.h"
#import "p1.h"
#import "p2.h"
#import "p3.h"
#import "p4.h"
#import "p5.h"
#import "p6.h"
#import "p7.h"
#import "p8.h"
#import "p9.h"
#import "p10.h"
#import "p11.h"
#import "p12.h"
#import "p13.h"
#import "p14.h"
#import "p15.h"
#import "p16.h"
#import "p17.h"
#import "p18.h"
#import "objc/message.h"
#import "leccionViewController.h"
@interface menuLeccion ()

@end

@implementation menuLeccion
@synthesize tituloLeccion;
@synthesize leccionName;
@synthesize numeroDeLeccion;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName, nil];
    self.navigationController.navigationBar.titleTextAttributes = attributes;
    self.title = leccionName;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName, nil];
    self.navigationController.navigationBar.titleTextAttributes = attributes;
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
   //self.navigationController.navigationBar.topItem.title = @"";
    
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.3f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];

	// Do any additional setup after loading the view.
    tituloLeccion.title=leccionName;
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *url;
    appDelegate.leccionName=leccionName;
   // int width = 1136;
    //int height = 640;
    
    self.navigationController.navigationItem.hidesBackButton = NO;
   
    appDelegate.leccionVideo=url;
}
- (IBAction)video:(id)sender
{
    switch (numeroDeLeccion) {
        case 0:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/nY7cUFoC0Y0"]];
        }
        break;
        case 1:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/umTgS5nInB0"]];
        }
            break;
        case 2:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/Yg-VrwFPcWo"]];
        }
            break;
        case 3:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/wP65xgIoMLg"]];
        }
            break;
        case 4:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/dTnDUSzpnho"]];
        }
            break;
        case 5:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/TbdwBTJSFf8"]];
        }
            break;
        case 6:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/f0H6kOwS6-A"]];
        }
            break;
        case 7:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/bWbK2Q-BevM"]];
        }
            break;
        case 8:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/_k0Hkug5ho0"]];
        }
            break;
        case 9:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/2YYOWGg0mkk"]];
        }
            break;
        case 10:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/dATx7iHaUQ4"]];
        }
            break;
        case 11:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/sXzjRJQNJFU"]];
        }
            break;
        case 12:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/YQoNC5Qr9oU"]];
        }
            break;
        case 13:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/4lMU4yCDzEQ"]];
        }
            break;
        case 14:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/jA6fqPmnbg0"]];
        }
            break;
        case 15:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/gI2hopTcNwM"]];
        }
            break;
        case 16:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/OfVgANe2pJ0"]];
        }
            break;
        case 17:
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/embed/ACfm4_AuM34"]];
        }
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)envi:(id)sender {
    switch (numeroDeLeccion) {
        case 0:
        {
            p1 *P1=[self.storyboard instantiateViewControllerWithIdentifier:@"P1"];
            P1.title = leccionName;
            [self.navigationController pushViewController:P1 animated:YES];
        }
            break;
        case 1:
        {
            p2 *P2=[self.storyboard instantiateViewControllerWithIdentifier:@"P2"];
            P2.title = leccionName;
            [self.navigationController pushViewController:P2 animated:YES];
        }            break;
        case 2:
        {
            p3 *P3=[self.storyboard instantiateViewControllerWithIdentifier:@"P3"];
            P3.title = leccionName;
            [self.navigationController pushViewController:P3 animated:YES];
        }            break;
        case 3:
        {
            p4 *P4=[self.storyboard instantiateViewControllerWithIdentifier:@"P4"];
            P4.title = leccionName;
            [self.navigationController pushViewController:P4 animated:YES];
        }            break;
        case 4:
        {
            p5 *P5=[self.storyboard instantiateViewControllerWithIdentifier:@"P5"];
            P5.title = leccionName;
            [self.navigationController pushViewController:P5 animated:YES];
        }            break;
        case 5:
        {
            p6 *P6=[self.storyboard instantiateViewControllerWithIdentifier:@"P6"];
            P6.title = leccionName;
            [self.navigationController pushViewController:P6 animated:YES];
        }            break;
        case 6:
        {
            p7 *P7=[self.storyboard instantiateViewControllerWithIdentifier:@"P7"];
            P7.title = leccionName;
            [self.navigationController pushViewController:P7 animated:YES];
        }            break;
        case 7:
        {
            p8 *P8=[self.storyboard instantiateViewControllerWithIdentifier:@"P8"];
            P8.title = leccionName;
            [self.navigationController pushViewController:P8 animated:YES];
        }            break;
        case 8:
        {
            p9 *P9=[self.storyboard instantiateViewControllerWithIdentifier:@"P9"];
            P9.title = leccionName;
            [self.navigationController pushViewController:P9 animated:YES];
        }            break;
        case 9:
        {
            p10 *P10=[self.storyboard instantiateViewControllerWithIdentifier:@"P10"];
            P10.title = leccionName;
            [self.navigationController pushViewController:P10 animated:YES];
        }            break;
        case 10:
        {
            p11 *P11=[self.storyboard instantiateViewControllerWithIdentifier:@"P11"];
            P11.title = leccionName;
            [self.navigationController pushViewController:P11 animated:YES];
        }            break;
        case 11:
        {
            p12 *P12=[self.storyboard instantiateViewControllerWithIdentifier:@"P12"];
            P12.title = leccionName;
            [self.navigationController pushViewController:P12 animated:YES];
        }            break;
        case 12:
        {
            p13 *P13=[self.storyboard instantiateViewControllerWithIdentifier:@"P13"];
            P13.title = leccionName;
            [self.navigationController pushViewController:P13 animated:YES];
        }            break;
        case 13:
        {
            p14 *P14=[self.storyboard instantiateViewControllerWithIdentifier:@"P14"];
            P14.title = leccionName;
            [self.navigationController pushViewController:P14 animated:YES];
        }            break;
        case 14:
        {
            p15 *P15=[self.storyboard instantiateViewControllerWithIdentifier:@"P15"];
            P15.title = leccionName;
            [self.navigationController pushViewController:P15 animated:YES];
        }            break;
        case 15:
        {
            p16 *P16=[self.storyboard instantiateViewControllerWithIdentifier:@"P16"];
            P16.title = leccionName;
            [self.navigationController pushViewController:P16 animated:YES];
        }
                        break;
        case 16:
        {
            p17 *P17=[self.storyboard instantiateViewControllerWithIdentifier:@"P17"];
            P17.title = leccionName;
            [self.navigationController pushViewController:P17 animated:YES];
        }
            break;
        case 17:
        {
            p18 *P18=[self.storyboard instantiateViewControllerWithIdentifier:@"P18"];
            P18.title = leccionName;
            [self.navigationController pushViewController:P18 animated:YES];
        }
            break;
        default:
            break;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"mensajeSegue"]) {
        leccionViewController *destViewController = segue.destinationViewController;
        destViewController.numeroDeLeccion = self.numeroDeLeccion;
     }
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(BOOL)shouldAutorotate
{
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
