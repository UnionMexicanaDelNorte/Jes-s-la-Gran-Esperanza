//
//  p14.m
//  JesusLaGranEsperanza
//
//  Created by David on 28/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "p14.h"
#import "AppDelegate.h"

@interface p14 ()

@end

@implementation p14
@synthesize p1;
@synthesize p1a;
@synthesize p1b;
@synthesize p1c;
@synthesize p1ar;
@synthesize p1br;
@synthesize p1cr;
@synthesize p2;
@synthesize p2a;
@synthesize p2b;
@synthesize p2c;
@synthesize p2ar;
@synthesize p2br;
@synthesize p2cr;
@synthesize p3;
@synthesize p3a;
@synthesize p3b;
@synthesize p3c;
@synthesize p3ar;
@synthesize p3br;
@synthesize p3cr;
@synthesize respuesta=_respuesta;
@synthesize scroll;
- (IBAction)p1a:(id)sender {
    [p1b setOn:NO animated:YES];
    [p1c setOn:NO animated:YES];
}
- (IBAction)p1b:(id)sender {
    [p1a setOn:NO animated:YES];
    [p1c setOn:NO animated:YES];
}

- (IBAction)p1c:(id)sender {
    [p1a setOn:NO animated:YES];
    [p1b setOn:NO animated:YES];
}
- (IBAction)p2a:(id)sender {
    [p2b setOn:NO animated:YES];
    [p2c setOn:NO animated:YES];
}
- (IBAction)p2b:(id)sender {
    [p2a setOn:NO animated:YES];
    [p2c setOn:NO animated:YES];
}

- (IBAction)p2c:(id)sender {
    [p2a setOn:NO animated:YES];
    [p2b setOn:NO animated:YES];
}
- (IBAction)p3a:(id)sender {
    [p3b setOn:NO animated:YES];
    [p3c setOn:NO animated:YES];
}
- (IBAction)p3b:(id)sender {
    [p3a setOn:NO animated:YES];
    [p3c setOn:NO animated:YES];
}

- (IBAction)p3c:(id)sender {
    [p3a setOn:NO animated:YES];
    [p3b setOn:NO animated:YES];
}

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
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.1f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];
    scroll.frame = CGRectMake(0, 20, 320, 524);
    [scroll setContentSize:CGSizeMake(320, 750)];
    _respuesta = [[NSMutableString alloc] init];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)enviar:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *registrado=[appDelegate.Datos objectForKey:@"seRegistro"];
    if([registrado isEqualToString:@"YES"]){
        UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Mi decisión" message:@"Habiendo entendido que Dios es dueño de mi vida y de todo lo que tengo, decido ser fiel a Dios en la devolución de mis diezmos." delegate:self cancelButtonTitle:@"Acepto" otherButtonTitles: nil];
        [mes show];
        [_respuesta appendString:p1.text];
        if(p1a.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p1ar.text];
        
        }else if(p1b.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p1br.text];
        
        }else if(p1c.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p1cr.text];
        
        }
        [_respuesta appendString:@"\n\n"];
        [_respuesta appendString:p2.text];
        if(p2a.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p2ar.text];
        
        }else if(p2b.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p2br.text];
        
        }else if(p2c.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p2cr.text];
        
        }
        [_respuesta appendString:@"\n\n"];
        [_respuesta appendString:p3.text];
        if(p3a.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p3ar.text];
        
        }else if(p3b.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p3br.text];
        
        }else if(p3c.isOn){
            [_respuesta appendString:@"\n\n Respuesta: "];
            [_respuesta appendString:p3cr.text];
        
        }
        NSString *instructorCorreo=[appDelegate.Datos valueForKey:@"instMail"];
        NSString *idRegistro=[appDelegate.Datos valueForKey:@"idRegistro"];
        
        NSMutableString *post = [[NSMutableString alloc] init];
        [post appendString: @"servicio=app&accion=mandaRespuesta&correoAdicional="];
        [post appendString:instructorCorreo];
        [post appendString:@"&numeroLeccion=14&idRegistro="];
        [post appendString:idRegistro];
        [post appendString:@"&respuestas="];
        [post appendString:_respuesta];

        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        
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
        UIAlertView* noRegistrado=[[UIAlertView alloc] initWithTitle:@"Alerta" message:@"aun no te has registrado! regresa al menú principal y registra tus datos para poder enviar tus respuestas" delegate:self cancelButtonTitle:@"Acepto" otherButtonTitles: nil];
        [noRegistrado show];
    }
    
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
    NSMutableDictionary *allCourses;
    allCourses = [NSJSONSerialization
                                       JSONObjectWithData:_responseData
                                       options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves
                                       error:&error];
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Felicidades" message:@"tus respuestas han sido enviadas con exito, espera respuesta" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
    [success show];
    
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
    
}
@end