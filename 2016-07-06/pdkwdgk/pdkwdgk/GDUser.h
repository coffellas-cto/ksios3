//
//  GDUser.h
//  pdkwdgk
//
//  Created by Alex on 7/6/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, GDUserAgeCategory) {
    GDUserAgeCategoryUnder18, //Incl.
    GDUserAgeCategoryUnder55, //Inclusive
    GDUserAgeCategoryOver55
};

@interface GDUser : NSObject {
@public
    NSString *_name;
    NSString *_realName;
}

@property NSUInteger ID;
@property NSString *name;
@property GDUserAgeCategory ageCategory;

- (instancetype)initWithID:(NSUInteger)ID andName:(NSString *)name;

- (void)changeSkinColor:(UIColor *)color;

+ (GDUser *)userWithID:(NSUInteger)ID andName:(NSString *)name;

@end
