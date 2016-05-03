//
//  p15.m
//  JesusLaGranEsperanza
//
//  Created by David on 30/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "p15.h"
#import "AppDelegate.h"
@interface p15 ()

@end

@implementation p15
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
@synthesize p3;
@synthesize p3a;
@synthesize p3b;
@synthesize p3c;
@synthesize p4;
@synthesize p4a;
@synthesize p4b;
@synthesize p4c;
@synthesize p4ar;
@synthesize p4br;
@synthesize p4cr;
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
- (IBAction)p4a:(id)sender {
    [p4b setOn:NO animated:YES];
    [p4c setOn:NO animated:YES];
}
- (IBAction)p4b:(id)sender {
    [p4a setOn:NO animated:YES];
    [p4c setOn:NO animated:YES];
}

- (IBAction)p4c:(id)sender {
    [p4a setOn:NO animated:YES];
    [p4b setOn:NO animated:YES];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}
//Implement the below delegate method:

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
}

//Implement resignOnTap:

- (void)resignOnTap:(id)iSender {
    [self.p2a resignFirstResponder];
    [self.p2b resignFirstResponder];
    [self.p3a resignFirstResponder];
    [self.p3b resignFirstResponder];
    [self.p3c resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.1f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignOnTap:)];
    [singleTap setNumberOfTapsRequired:1];
    [singleTap setNumberOfTouchesRequired:1];
    [self.view addGestureRecognizer:singleTap];

	// Do any additional setup after loading the view.
    self.p2a.delegate = self;
    self.p2b.delegate = self;
    self.p3a.delegate = self;
    self.p3b.delegate = self;
    self.p3c.delegate = self;
    
    scroll.frame = CGRectMake(0, 20, 320, 524);
    [scroll setContentSize:CGSizeMake(320, 970)];
    _respuesta = [[NSMutableString alloc] init];
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
        UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Mi decisión" message:@"Después de haber entendido que Dios continúa guiando a su iglesia en nuestros días a través del Espíritu de profecía, lo acepto, en la vida y obra de Elena de White." delegate:self cancelButtonTitle:@"Acepto" otherButtonTitles: nil];
        [mes show];
        [_respuesta appendString:p1.text];
        if(p1a.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p1ar.text];
        
        }else if(p1b.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p1br.text];
        
        }else if(p1c.isOn){
            [_respuesta appendString:@"\n\n Respuesta: "];
            [_respuesta appendString:p1cr.text];
        }
        [_respuesta appendString:@"\n\n"];
        [_respuesta appendString:p2.text];
        [_respuesta appendString:@"\n"];
        [_respuesta appendString:p2a.text];
        [_respuesta appendString:@"\n"];
        [_respuesta appendString:p2b.text];
        [_respuesta appendString:@"\n\n"];
        [_respuesta appendString:p3.text];
        [_respuesta appendString:@"\n"];
        [_respuesta appendString:p3a.text];
        [_respuesta appendString:@"\n"];
        [_respuesta appendString:p3b.text];
        [_respuesta appendString:@"\n"];
        [_respuesta appendString:p3c.text];
        [_respuesta appendString:@"\n\n"];
        [_respuesta appendString:p4.text];
        if(p4a.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p4ar.text];
        
        }else if(p4b.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p4br.text];
        
        }else if(p4c.isOn){
            [_respuesta appendString:@"\n Respuesta: "];
            [_respuesta appendString:p4cr.text];
        }
        NSString *instructorCorreo=[appDelegate.Datos valueForKey:@"instMail"];
        NSString *idRegistro=[appDelegate.Datos valueForKey:@"idRegistro"];
        
        NSMutableString *post = [[NSMutableString alloc] init];
        [post appendString: @"servicio=app&accion=mandaRespuesta&correoAdicional="];
        [post appendString:instructorCorreo];
        [post appendString:@"&numeroLeccion=15&idRegistro="];
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
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Felicidades" message:@"tus respuestas han sido enviadas con éxito, espera respuesta" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil];
    [success show];
    
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
    
}
@end