//
//  ViewController.m
//  AutolayoutTest
//
//  Created by Alex on 7/11/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pushTopConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.pushTopConstraint.constant = 300.0;
        [UIView animateWithDuration:3.0 animations:^{
            [self.view layoutIfNeeded];
        }];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setTitleString:(NSString *)title forVC:(UIViewController *)vc {
    SEL titleStringSelector = @selector(setTitleString:);
    if ([vc respondsToSelector:titleStringSelector]) {
        [vc performSelector:titleStringSelector withObject:title];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"%@", segue);
    UIViewController *vc = segue.destinationViewController;

    if ([segue.identifier isEqualToString:@"pushID"]) {
        [self setTitleString:@"I pushed you" forVC:vc];
    } else {
        UINavigationController *navVC = (UINavigationController *)vc;
        if ([navVC isKindOfClass:[UINavigationController class]]) {
            NSLog(@"%@", navVC.topViewController);
            [self setTitleString:@"I presented you" forVC:navVC.topViewController];
        }
    }
}

@end
