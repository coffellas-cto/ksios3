//
//  GDUser.m
//  pdkwdgk
//
//  Created by Alex on 7/6/16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "GDUser.h"

@implementation GDUser

//- (NSString *)name {
////    if (_realName) {
////        return _realName;
////    }
////    
//    return _name;
//}
//
//- (void)setName:(NSString *)name {
//    self->_name = name;
//}
//
//- (void)setSecretName:(NSString *)secretName {
//    _realName = secretName;
//}

- (instancetype)init {
    return [self initWithID:0 andName:nil];
}

- (instancetype)initWithID:(NSUInteger)ID andName:(NSString *)name {
    if (ID == 0) {
        return nil;
    }
    
    self = [super init];
    if (self) {
        self.ID = ID;
        self.ageCategory = GDUserAgeCategoryOver55;
        _name = name;
    }
    return self;
}

+ (GDUser *)userWithID:(NSUInteger)ID andName:(NSString *)name {
    GDUser *retVal = [[GDUser alloc] initWithID:ID andName:name];
    return retVal;
}

- (void)dealloc {
    // Dispose of objects
}

- (NSString *)description {
    return [NSString stringWithFormat:@"[%i] %@", self.ID, self.name];
}

@end
