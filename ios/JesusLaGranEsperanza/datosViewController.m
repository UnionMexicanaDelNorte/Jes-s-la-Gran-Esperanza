//
//  datosViewController.m
//  JesusLaGranEsperanza
//
//  Created by David on 10/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "datosViewController.h"
#import "p1.h"
#import "AppDelegate.h"


@interface datosViewController ()

@end

@implementation datosViewController
@synthesize usrMail;
@synthesize usrName;
@synthesize instMail;
@synthesize currentResponder;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)AvisoDePrivacidad:(id)sender;
{
    UIAlertView *alertV = [[UIAlertView alloc] initWithTitle:@"Aviso de Privacidad" message:@"Los datos personales serán recabados con la finalidad de ponernos en contacto contigo, para tener retroalimentación del estudio: \"Jesús, la Gran Esperanza\", si quieres ver el Aviso de Privacidad completo, presiona el botón \"Ver Completo\"" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Ver Completo", nil];
    [alertV show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://unionnorte.org/privacidad.html"]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Mis Datos";

    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.2f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];
    
    
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignOnTap:)];
    [singleTap setNumberOfTapsRequired:1];
    [singleTap setNumberOfTouchesRequired:1];
    [self.view addGestureRecognizer:singleTap];
    
    
    
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}
//Implement the below delegate method:

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    self.currentResponder = textField;
}

//Implement resignOnTap:

- (void)resignOnTap:(id)iSender {
    [self.currentResponder resignFirstResponder];
}
-(void) viewWillAppear:(BOOL)animated
{
       [super viewWillAppear:animated];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    usrName.text = [appDelegate.Datos valueForKey:@"usrName"];
    
    usrMail.text = [appDelegate.Datos valueForKey:@"usrMail"];
    instMail.text = [appDelegate.Datos valueForKey:@"instMail"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textfieldreturn:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)Guardar:(id)sender {
    
    if ([usrMail.text isEqualToString:instMail.text])
    {
        UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Notificación" message:@"Los correos no pueden ser iguales" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alert2 show];
    }
    else{
        
    
    
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if ([usrName.text isEqualToString:@""]==FALSE && [usrMail.text isEqualToString:@""]==FALSE) {
        [appDelegate.Datos setValue:usrName.text forKey:@"usrName"];
        [appDelegate.Datos  setValue:usrMail.text forKey:@"usrMail"];
        [appDelegate.Datos  setValue:instMail.text forKey:@"instMail"];
        [appDelegate.Datos  synchronize];
        NSString *usuarioNombre=[appDelegate.Datos valueForKey:@"usrName"];
        NSString *usuarioCorreo=[appDelegate.Datos valueForKey:@"usrMail"];
        NSString *instructorCorreo=[appDelegate.Datos valueForKey:@"instMail"];
    
        UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Atención" message:@"sus datos no serán usados para otros fines" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [mes show];
        NSMutableString *postp=[[NSMutableString alloc] init];
        [postp appendString:@"servicio=app&accion=registraUsuario&correo="];
       [postp appendString:usuarioCorreo];
        [postp appendString:@"&nombre="];
        [postp appendString:usuarioNombre];
        [postp appendString:@"&correoAdicional="];
        [postp appendString:instructorCorreo];
      
        NSData *postData = [postp dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
    
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setURL:[NSURL URLWithString:@"http://ipastor.unionnorte.org/granesperanza.php"]];
        [request setHTTPMethod:@"POST"];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postData];
    
        NSURLConnection *conn;
        conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }else{
        UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"ALERTA" message:@"llena los campos marcados con *obligatorio" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [mes show];
    }
        
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

#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    _responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    [_responseData appendData:data];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSError *error;
    NSMutableDictionary *allCourses = [NSJSONSerialization
                                       JSONObjectWithData:_responseData
                                       options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves
                                       error:&error];
    int idRegistro = [[allCourses objectForKey:@"idRegistro"] intValue];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString* myCast = [NSString stringWithFormat:@"%i", idRegistro];
    [appDelegate.Datos setValue:myCast forKey:@"idRegistro"];
    [appDelegate.Datos setValue:@"YES" forKey:@"seRegistro"];
    
    
    [appDelegate.Datos synchronize];
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Felicidades!" message:@"tu registro a sido exitoso" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
    [success show];
    
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
   
}
@end
