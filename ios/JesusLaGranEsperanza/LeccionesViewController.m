//
//  LeccionesViewController.m
//  JesusLaGranEsperanza
//
//  Created by David on 25/02/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "LeccionesViewController.h"
#import "leccionViewController.h"
#import "menuLeccion.h"
#import "AppDelegate.h"

@interface LeccionesViewController ()

@end

@implementation LeccionesViewController
{
    NSArray *Lista;
    NSString *Texto;
}
@synthesize tableView;

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title=@"Jesús, la Gran Esperanza";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];

    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName, nil];
    self.navigationController.navigationBar.titleTextAttributes = attributes;
    
 /*  UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.3f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];
*/
    
     Lista=[NSArray arrayWithObjects:@"Verdadera Esperanza", @"Salvación y Esperanza",@"Amor y Esperanza",@"Creación y Esperanza",@"Conversión y Esperanza",@"Justicia y Esperanza",@"Reposo y Esperanza",@"Jesús, Tu Esperanza",@"Esperanza y Vida Eterna",@"Esperanza y Protección",@"El Dios de la Esperanza",@"Esperanza de Intercesión",@"Esperanza es Salud",@"Esperanza y Fidelidad",@"Esperanza y Cuidado",@"Esperanza y un Nuevo Nacimiento",@"La Iglesia de la Esperanza",@"Compartiendo la Esperanza",nil];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Lista count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     [self performSegueWithIdentifier: @"MostrarLeccion" sender: self];
    //NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
  //  menuLeccion *destViewController = segue.destinationViewController;
    //destViewController.numeroDeLeccion = indexPath.row;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = [NSString stringWithFormat:@"Lecciones%ld",(long)indexPath.row];
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    //cell.alpha=0.0f;
   
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        UIImageView *photo = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 80.0, 45.0)];
        switch (indexPath.row) {
            case 0:
                photo.image = [UIImage imageNamed:@"mensaje.png"];
                break;
            case 1:
                photo.image = [UIImage imageNamed:@"lec02.png"];
                break;
            case 2:
                photo.image  = [UIImage imageNamed:@"lec03.png"];
                break;
            case 3:
                photo.image  = [UIImage imageNamed:@"lec04.png"];
                break;
            case 4:
                photo.image  = [UIImage imageNamed:@"lec05.png"];
                break;
            case 5:
                photo.image  = [UIImage imageNamed:@"lec06.png"];
                break;
            case 6:
                photo.image  = [UIImage imageNamed:@"lec07.png"];
                break;
            case 7:
                photo.image  = [UIImage imageNamed:@"lec08.png"];
                break;
            case 8:
                photo.image  = [UIImage imageNamed:@"lec09.png"];
                break;
            case 9:
                photo.image  = [UIImage imageNamed:@"lec10.png"];
                break;
            case 10:
                photo.image  = [UIImage imageNamed:@"lec11.png"];
                break;
            case 11:
                photo.image  = [UIImage imageNamed:@"lec12.png"];
                break;
            case 12:
                photo.image  = [UIImage imageNamed:@"lec13.png"];
                break;
            case 13:
                photo.image  = [UIImage imageNamed:@"lec14.png"];
                break;
            case 14:
                photo.image  = [UIImage imageNamed:@"lec15.png"];
                break;
            case 15:
                photo.image  = [UIImage imageNamed:@"lec16.png"];
                break;
            case 16:
                photo.image  = [UIImage imageNamed:@"lec17.png"];
                break;
            case 17:
                photo.image  = [UIImage imageNamed:@"lec18.png"];
                break;
                
                
            default:
                break;
        }
        
        
        [cell.contentView addSubview:photo];
        UILabel *mainLabel = [[UILabel alloc] initWithFrame:CGRectMake(85.0, 13.0, 215.0, 15.0)];
        mainLabel.text = [Lista objectAtIndex:indexPath.row];
        if (indexPath.row==15)
        {
            mainLabel.font = [UIFont systemFontOfSize:13];
        }
        else
        {
            if (indexPath.row==17)
            {
                mainLabel.font = [UIFont systemFontOfSize:16];
            }
        }
        [cell.contentView addSubview:mainLabel];
        
        
        
    }
    
//    cell.textLabel.text = [Lista objectAtIndex:indexPath.row];
    /*
     
    */
    
    
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"MostrarLeccion"]) {
        NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
        menuLeccion *destViewController = segue.destinationViewController;
        destViewController.numeroDeLeccion = indexPath.row;
        destViewController.leccionName = [Lista objectAtIndex:indexPath.row];
        
       
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
