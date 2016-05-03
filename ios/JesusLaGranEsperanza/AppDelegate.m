//
//  AppDelegate.m
//  JesusLaGranEsperanza
//
//  Created by David on 25/02/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window;
@synthesize Datos;
@synthesize leccionName;
@synthesize leccionVideo;



- (void)scheduleAlarmForDate:(NSDate*)theDate text:(NSString*)theText
{
	UIApplication *app =[UIApplication sharedApplication];
    // Create a new notification.
    UILocalNotification* alarm = [[UILocalNotification alloc] init];
    //    if (alarm)
    //   {
    alarm.alertAction = NSLocalizedString(@"Read Msg", nil);
    alarm.applicationIconBadgeNumber = 1;
	alarm.fireDate = theDate;//[NSDate dateWithTimeIntervalSinceNow:15];//theDate;
    alarm.timeZone = [NSTimeZone systemTimeZone];
    alarm.repeatInterval = 0;
    //  alarm.soundName = @"alarmsound.caf";
    alarm.alertBody = theText;
	//	[app presentLocalNotificationNow:alarm];
    [app scheduleLocalNotification:alarm];
	
    // }
}


-(void)checkForNotifications
{
    
    // Decompose the date corresponding to "now" into Year+Month+Day components
    NSCalendarUnit units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents* comps = [[NSCalendar currentCalendar] components:units fromDate:[NSDate date]];
    
    
    // Add one day
    comps.day = comps.day+1; // no worries: even if it is the end of the month it will wrap to the next month, see doc
    // Recompose a new date, without any time information (so this will be at midnight)
    NSDate* tomorrowMidnight = [[NSCalendar currentCalendar] dateFromComponents:comps];
    
    
    NSCalendarUnit unitsT = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit;
    NSDateComponents* compsT = [[NSCalendar currentCalendar] components:unitsT fromDate:[NSDate date]];
    
    compsT.minute = compsT.minute +1;
    compsT.second = 0;
    NSDate* today = [[NSCalendar currentCalendar] dateFromComponents:compsT];
    [self scheduleAlarmForDate:today text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Verdadera Esperanza\""]];
    //
    //NSLog(@"%@",today.description);
    NSDate *tomorrowAtSix = [NSDate dateWithTimeInterval:(5.50f*60*60) sinceDate:tomorrowMidnight];
    
    
    [self scheduleAlarmForDate:tomorrowAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Salvación y Esperanza\""]];
    
    int i;
    NSDate *otherDayAtSix;
    //agua
    for (i=1; i<=16; i++)
    {
        otherDayAtSix = [NSDate dateWithTimeInterval:(24*60*60*i) sinceDate:tomorrowAtSix];
        switch (i) {
            case 1:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Amor y Esperanza\""]];
            }
                break;
            case 2:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Creación y Esperanza\""]];
            }
                break;
            case 3:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Conversión y Esperanza\""]];
            }
                break;
            case 4:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Justicia y Esperanza\""]];
            }
                break;
            case 5:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Reposo y Esperanza\""]];
            }
                break;
            case 6:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Jesús, tu Esperanza\""]];
            }
                break;
            case 7:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza y Vida Eterna\""]];
            }
                break;
            case 8:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza y Protección\""]];
            }
                break;
            case 9:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"El Dios de la Esperanza\""]];
            }
                break;
            case 10:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza de Intercesión\""]];
            }
                break;
            case 11:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza es Salud\""]];
            }
                break;
            case 12:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza y Fidelidad\""]];
            }
                break;
            case 13:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza y Cuidado\""]];
            }
                break;
            case 14:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Esperanza y un Nuevo Nacimiento\""]];
            }
                break;
            case 15:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"La Iglesia de la Esperanza\""]];
            }
                break;
            case 16:
            {
                [self scheduleAlarmForDate:otherDayAtSix text:[NSString stringWithFormat:@"El día de hoy te invitamos a que leas el estudio titulado: \"Compartiendo la Esperanza\""]];
            }
                break;
                
            default:
                break;
        }
    }
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Datos= [NSUserDefaults standardUserDefaults];
    // Override point for customization after application launch.
    self.firstRun=NO;
	if(![[NSUserDefaults standardUserDefaults] boolForKey:@"AlreadyRan"] ) {
		[[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"AlreadyRan"];
		self.firstRun = YES;
	}
	
    if (self.firstRun)
    {
        [self checkForNotifications];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Jesús, la Gran Esperanza" message:@"Bienvenido al estudio bíblico \"Jesús, la Gran Esperanza\", cuyo propósito es enseñarte a ser feliz. No puede haber felicidad sin esperanza. " delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alert show];
    }


    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    [UIApplication sharedApplication].applicationIconBadgeNumber=0;

    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
       leccionName=[[NSString alloc]init];
    leccionVideo=[[NSString alloc]init];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
