//
//  p3.m
//  JesusLaGranEsperanza
//
//  Created by David on 26/03/14.
//  Copyright (c) 2014 David. All rights reserved.
//

#import "p3.h"
#import "AppDelegate.h"

@interface p3 ()

@end

@implementation p3
@synthesize scroll;
@synthesize p1a;
@synthesize p1b;
@synthesize p1c;
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondo.png"]];
    bgImageView.frame = self.view.bounds;
    bgImageView.alpha = 0.1f;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];
   	// Do any additional setup after loading the view.
    
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
    NSString *registrado=[appDelegate.Datos valueForKey:@"seRegistro"];
    if([registrado isEqualToString:@"YES"]){
    UIAlertView* mes=[[UIAlertView alloc] initWithTitle:@"Mi decisión" message:@"Habiendo entendido el amor de Dios, decido aceptar ese amor maravilloso, y por eso me entrego a Jesús." delegate:self cancelButtonTitle:@"Acepto" otherButtonTitles: nil];
    [mes show];
    if (p1a.isOn) {
        [_respuesta appendString:@"1. En 1 Juan 4:8, dice que Dios es:\n\n respuesta: Arbitrario e intransigente"];
    }else if (p1b.isOn){
        [_respuesta appendString:@"1. En 1 Juan 4:8, dice que Dios es:\n\n respuesta: Un ser extraño, que no se interesa por tí. "];
    }else if (p1c.isOn){
        [_respuesta appendString:@"1. En 1 Juan 4:8, dice que Dios es:\n\n respuesta: Amor."];
    }
    if (p2a.isOn) {
       [_respuesta appendString:@"\n\n\n 2. En Jeremías 31:3, Dios hace una declaración de amor al hombre, ¿qué dijo? \n\n respuesta: Te amo, porque soy tu Creador."];
    }else if (p2b.isOn){
       [_respuesta appendString:@"\n\n\n 2. En Jeremías 31:3, Dios hace una declaración de amor al hombre, ¿qué dijo? \n\n respuesta: Con amor eterno te he amado."];
    }else if (p2c.isOn){
        [_respuesta appendString:@"\n\n\n 2. En Jeremías 31:3, Dios hace una declaración de amor al hombre, ¿qué dijo? \n\n respuesta: Te amo, pero con condiciones."];
    }
    if (p3a.isOn) {
        [_respuesta appendString:@"\n\n\n 3. ¿Es necesario que ames a Dios para que también él te ame?\n\n respuesta: Sí, debo amarlo para que me ame."];
    }else if (p3b.isOn){
        [_respuesta appendString:@"\n\n\n 3. ¿Es necesario que ames a Dios para que también él te ame?\n\n respuesta: No, porque ninguna otra cosa creada nos podrá separar del amor de Dios."];
    }else if (p3c.isOn){
        [_respuesta appendString:@"\n\n\n 3. ¿Es necesario que ames a Dios para que también él te ame?\n\n respuesta: No lo sé."];
    }
    if (p4a.isOn) {
        [_respuesta appendString:@"\n\n\n 4. Según Juan 3: 16, Dios quiere darte: \n\n respuesta: Riquezas y fama."];
    }else if (p4b.isOn){
       [_respuesta appendString:@"\n\n\n 4. Según Juan 3: 16, Dios quiere darte: \n\n respuesta: Una inteligencia superior a la de todos los hombres."];
    }else if (p4c.isOn){
        [_respuesta appendString:@"\n\n\n 4. Según Juan 3: 16, Dios quiere darte: \n\n respuesta: La vida eterna."];
    }
    
        NSString *instructorCorreo=[appDelegate.Datos valueForKey:@"instMail"];
        NSString *idRegistro=[appDelegate.Datos valueForKey:@"idRegistro"];
        
        NSMutableString *post = [[NSMutableString alloc] init];
        [post appendString: @"servicio=app&accion=mandaRespuesta&correoAdicional="];
        [post appendString:instructorCorreo];
        [post appendString:@"&numeroLeccion=3&idRegistro="];
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
