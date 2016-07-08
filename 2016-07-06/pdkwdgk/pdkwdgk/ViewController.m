//
//  ViewController.m
//  pdkwdgk
//
//  Created by Alex on 7/4/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "ViewController.h"
#import "GDUser.h"

//dsksdglhkdsg

@interface ViewController ()

@end

@implementation ViewController

- (void)changeColor:(UIColor *)color forUserID:(int)userID {
    if (userID == 1) {
        self.view.backgroundColor = color;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *a = [[NSMutableArray alloc] init];
    
    GDUser *u1 = [GDUser userWithID:23 andName:@"Alex"];
    [a addObject:u1];
    GDUser *u2 = [GDUser userWithID:294180 andName:@"Petya"];
    [a addObject:u2];
    NSLog(@"%@", a);
    
    return;
    // Do any additional setup after loading the view, typically from a nib.
    
    GDUser *user1 = [GDUser userWithID:1 andName:@"V. Pupkin"];
    user1.ageCategory = GDUserAgeCategoryUnder55;
    
//    NSLog(@"Username: %@", user1.name);
    
//    user1.name = @"abc";
//    [user1 setName:@"abc"];
//    
    user1.name = @"Shmupkin";
    user1->_name = @"Pupkin";
    
    NSString *methodSignature = @"setSecretName:";
    
    SEL methodSelector = NSSelectorFromString(methodSignature);
    
    [user1 performSelector:methodSelector withObject:@"Clinton"];
    
//    name = [user1 name];
    
    
    return;
    

    UIView *view = self.view;
    
    
    [view setTintColor:[UIColor redColor]];
    
    [self changeColor:[UIColor redColor] forUserID:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
