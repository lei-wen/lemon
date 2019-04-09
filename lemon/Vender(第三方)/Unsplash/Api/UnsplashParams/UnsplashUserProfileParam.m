//
//  UnsplashUserProfileParam.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashUserProfileParam.h"

@implementation UnsplashUserProfileParam

- (instancetype)init {
    return nil;
}

- (UnsplashUserProfileParam *)initWithUserName:(NSString *)username w:(NSInteger)w h:(NSInteger)h {
    self = [super init];
    if (self) {
        _username = [username copy];
        _w = w;
        _h = h;
    }
    return self;
}

@end
