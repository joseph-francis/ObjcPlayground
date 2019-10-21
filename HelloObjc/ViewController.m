//
//  ViewController.m
//  HelloObjc
//
//  Created by Joseph Francis on 10/13/19.
//  Copyright © 2019 Joseph Francis. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Vehicle.h"

@interface ViewController ()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;

@end

@implementation ViewController


- (BOOL) canPurchase:(double)amount {
    if (self.bankAccount >= amount) {
        return YES;
    }
    
    return NO;
}

- (void) processPurchase:(double)amt {
    
}

//- (NSString) getUpperVersion:(NSString)

- (void) declareWinnerWithPlayerScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    
    if (scoreA > scoreB) {
        NSLog(@"Player A wins!");
    } else if (scoreB > scoreA) {
        NSLog(@"Player B wins");
    } else {
        NSLog(@"The game is at a standstill!!!");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSArray is not modifiyable; NSMutableArray is mutable; you can assign NSMutableArray to NSArray; Same thing with dictionary -> NSMutableDictionary and NSDictionary
    NSArray *arr = [NSArray arrayWithObject:@"Something"];
    //NSMutableDictionary *dict = [@{@"firstName": @"Joseph"} mutableCopy]; ---->> Don't do this
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:@"An object" forKey:@"A Key"];
    
    for (NSString *something in arr) {
        NSLog(@"Something: %@", something);
    }
    
    //UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com"]]];
    
    UIImage *image;
    
    
    NSString *urlString = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    image = [UIImage imageWithData:data];
    
    
    NSString *var1 = @"A String";
    
    if ([var1 caseInsensitiveCompare:@"this"] == NSOrderedSame) { //We have to do ==NSOrderedSame to make it work;
        NSLog(@"It matches");
    } else {
        NSLog(@ "It doesn't match");
    }
    
    self.bankAccount = 500.5;
    self.itemAmount = 400.0;
    
    if ([self canPurchase: self.itemAmount]) {
        NSLog(@"Can be purchased");
    } else {
        NSLog(@"Cannot be purchased");
    }
    
    Vehicle *car = [[Vehicle alloc] init];
//    car.odometer = -100;
//    NSLog(@"Car's odometer: %@", car.odometer);
    
    car.model = @"BMW i8";
    NSLog(@"Make and Model: %@", car.model);
    
    car.model = @"Honda Civic";
    NSLog(@"The real make and model: %@", car.model);
    
    
    Person *person1 = [[Person alloc] init];
    person1.firstName = @"Joseph";
    [person1 setLastName:@"Francis"];
    [person1 speakName];
    [Person stateSpecies]; //Class function
    
    NSLog(@"Name: %@", self.name);
    
    self.name = @"Jack";
    NSLog(@"Name %@", self.name);
    
    _name = @"Peter";
    NSLog(@"Name: %@", _name);
    
    [self setName:@"Sylvia"];
    NSLog(@"Name: %@", [self name]);
}

- (IBAction)clickBaitPressed:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WELCOME" message:@"Welcome to Obj-C" preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction *closeAction = [UIAlertAction actionWithTitle:@"CLOSE" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:closeAction];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
