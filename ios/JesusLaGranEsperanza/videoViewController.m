//
//  videoViewController.m
//  JesusLaGranEsperanza
//
//  Created by David on 05/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "videoViewController.h"
#import "AppDelegate.h"
#import "objc/message.h"

@interface videoViewController ()

@end

@implementation videoViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *url = appDelegate.leccionVideo;
    
    NSURL *myURL = [[NSURL alloc]initWithString:[[url substringFromIndex:53] substringToIndex:40]];
    //[mySafari openURL:myURL];
    
    
    
    NSString *embedHTML =[NSString stringWithFormat:@"\
                          <html><head>\
                          <style type=\"text/css\">\
                          body {\
                          background-color: transparent;\
                          color: blue;\
                          }\
                          </style>\
                          </head><body style=\"margin:0\">\
                          <iframe height=\"140\" width=\"325\"      src=\"http://www.youtube.com/embed/%@\"></iframe>\
                          </body></html>",myURL];
    [[self webView] loadHTMLString:embedHTML baseURL:nil];
    
    //AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    //[[self webView] loadHTMLString:appDelegate.leccionVideo baseURL:nil];
  //  [[self webView] stringByEvaluatingJavaScriptFromString:@"document.getElementById('forTest').style.width=1136;"];
    //[[self webView] stringByEvaluatingJavaScriptFromString:@"document.getElementById('forTest').style.heigth=640;"];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationLandscapeLeft);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft;
}
@end
