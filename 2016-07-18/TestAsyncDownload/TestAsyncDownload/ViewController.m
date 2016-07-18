//
//  ViewController.m
//  TestAsyncDownload
//
//  Created by Alex on 7/18/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIView *view1;
@property UIImageView *imageView;

@end

@implementation ViewController

- (void)animateDirection:(BOOL)direction {
    [UIView animateWithDuration:1 animations:^{
        self.view1.frame = CGRectMake(0, direction ? 200 : 0, 200, 200);
    } completion:^(BOOL finished) {
        [self animateDirection:!direction];
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView];
    
    self.view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.view1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.view1];
    [self animateDirection:NO];
    
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"http://www.planwallpaper.com/static/images/6768666-1080p-wallpapers.jpg"]
                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
        NSLog(@"Error: %@", error);
        NSLog(@"%@", response);
        
        if (data && !error) {
            UIImage *image = [[UIImage alloc] initWithData:data];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.imageView.image = image;
            });
        }
    }];
    
    [task resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
