//
//  GDMainViewController.m
//  UIExample
//
//  Created by Alex on 7/8/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "GDMainViewController.h"

@interface GDMainViewController ()

@end

@implementation GDMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", self.navigationController);
    NSLog(@"%@", self);

    // Do any additional setup after loading the view.
    self.view.backgroundColor = [[UIColor alloc] initWithWhite:0.8 alpha:1.0];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100.0, 100.0, 140.0, 140.0)];
    view.backgroundColor = [UIColor redColor];
    view.clipsToBounds = YES;
    [self.view addSubview:view];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(20.0, 20.0, 140.0, 140.0)];
    view2.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.8];
    [view addSubview:view2];
    
    [UIView animateWithDuration:2.0 animations:^{
        CGRect rect = view.frame;
        rect.origin.x += 120.0;
        view.frame = rect;
        
        rect = view2.frame;
        rect.origin.x += 40.0;
        view2.frame = rect;
    }];
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(120, 120, 200, 200)];
    [button setTitle:@"PUSH!" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonDidTap {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
    [self.navigationController pushViewController:[[GDMainViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
