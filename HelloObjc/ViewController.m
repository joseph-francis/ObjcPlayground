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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSString *var1 = @"A String";
    
    if ([var1 caseInsensitiveCompare:@"this"] == NSOrderedSame) { //We have to do ==NSOrderedSame to make it work;
        NSLog(@"It matches");
    } else {
        NSLog(@ "It doesn't match");
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
