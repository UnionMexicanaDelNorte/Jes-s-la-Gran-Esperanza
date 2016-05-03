//
//  LeccionesViewController.h
//  JesusLaGranEsperanza
//
//  Created by David on 25/02/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeccionesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSString *leccionDia;
}
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
