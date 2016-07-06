//
//  ViewController.h
//  pdkwdgk
//
//  Created by Alex on 7/4/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

void change_color(UIColor *color, int user_id);

@interface ViewController : UIViewController

- (void)changeColor:(UIColor *)color forUserID:(int)userID;

/*
 changeColor:forUserID:
 
 (UIColor *)color
 
 (int)userID
 */


@end

