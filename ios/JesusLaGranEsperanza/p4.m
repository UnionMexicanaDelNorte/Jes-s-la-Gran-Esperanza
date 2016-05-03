//
//  p4.m
//  JesusLaGranEsperanza
//
//  Created by David on 26/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "p4.h"
#import "AppDelegate.h"

@interface p4 ()

@end

@implementation p4
@synthesize scroll;
@synthesize p1a;
@synthesize p2a;
@synthesize p2b;
@synthesize p2c;
@synthesize p3a;
@synthesize p3b;
@synthesize p3c;
@synthesize p4a;
@synthesize p4b;
@synthesize p4c;
@synthesize respuesta=_respuesta;

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

- (void)resignOnTap:(id)iSender {
    [self.p1a resignFirstResponder];
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
    self.p1a.delegate = self;
    scroll.frame = CGRectMake(0, 20, 320, 524);
    [scroll setContentSize:CGSizeMake(320, 970)];
    CGRect frameRect = p1a.frame;
    frameRect.size.height = 100;
    p1a.frame = frameRect;
    _respuesta = [[NSMutableString alloc] init];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}
- (IBAction)Enviar:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *registrado=[appDelegate.Datos objectForKey:@"seRegistro"];
    if([registrado isEqualToString:@"YES"]){
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Mi decisión" message:@"Acepto a Dios como mi creador y deseo vivir solo para él." delegate:self cancelButtonTitle:@"Acepto" otherButtonTitles: nil];
    [mes show];
    [_respuesta appendString:@"1. Contesta de acuerdo a lo que has leído, ¿Cómo es que los cielos y la tierra llegaron a la existencia?\n\nrespuesta: "];
    [_respuesta appendString:p1a.text];
    if (p2a.isOn) {
        [_respuesta appendString:@"\n\n\n 2. De acuerdo con Salmo 19:1, ¿mediante qué llegamos a conocer el poder creador de Dios? \n\n respuesta: La inteligencia humana."];
    }else if (p2b.isOn){
        [_respuesta appendString:@"\n\n\n 2. De acuerdo con Salmo 19:1, ¿mediante qué llegamos a conocer el poder creador de Dios? \n\n respuesta: Mediante los complejos sistemas planetarios."];
    }else if (p2c.isOn){
       [_respuesta appendString:@"\n\n\n 2. De acuerdo con Salmo 19:1, ¿mediante qué llegamos a conocer el poder creador de Dios? \n\n respuesta: Los cielos que cuentan la gloria de Dios."];
    }
    if (p3a.isOn) {
        [_respuesta appendString:@"\n\n\n 3. Al leer Génesis 3:1, ¿qué medio fue utilizado por Satanás para que entrara el pecado al mundo?\n\n respuesta: Un fruto maravilloso y hechizante."];
    }else if (p3b.isOn){
        [_respuesta appendString:@"\n\n\n 3. Al leer Génesis 3:1, ¿qué medio fue utilizado por Satanás para que entrara el pecado al mundo?\n\n respuesta: Un descuido lamentable de Dios."];
    }else if (p3c.isOn){
       [_respuesta appendString:@"\n\n\n 3. Al leer Génesis 3:1, ¿qué medio fue utilizado por Satanás para que entrara el pecado al mundo?\n\n respuesta: Uno de los animales del campo: la serpiente."];
    }
    if (p4a.isOn) {
        [_respuesta appendString:@"\n\n\n 4. Entendidos de que la serpiente representa a Satanás, y que hoy actúa en nuestra contra, ¿qué nos pide 1 Pedro 5:8? \n\n respuesta: Desafiar al diablo."];
    }else if (p4b.isOn){
        [_respuesta appendString:@"\n\n\n 4. Entendidos de que la serpiente representa a Satanás, y que hoy actúa en nuestra contra, ¿qué nos pide 1 Pedro 5:8? \n\n respuesta: Que seamos sobrios (alertas, vigilantes, despiertos) y velemos para resistirle."];
    }else if (p4c.isOn){
        [_respuesta appendString:@"\n\n\n 4. Entendidos de que la serpiente representa a Satanás, y que hoy actúa en nuestra contra, ¿qué nos pide 1 Pedro 5:8? \n\n respuesta: Que consideremos al enemigo como una buena broma."];
    }
    
        NSString *instructorCorreo=[appDelegate.Datos valueForKey:@"instMail"];
        NSString *idRegistro=[appDelegate.Datos valueForKey:@"idRegistro"];
        
        NSMutableString *post = [[NSMutableString alloc] init];
        [post appendString: @"servicio=app&accion=mandaRespuesta&correoAdicional="];
        [post appendString:instructorCorreo];
        [post appendString:@"&numeroLeccion=4&idRegistro="];
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
        conn= [[NSURLConnection alloc] initWithRequest:request delegate:self];
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
    allCourses= [NSJSONSerialization
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
