//
//  NSDictionary+IsNull.m
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "NSDictionary+IsNull.h"

@implementation NSDictionary (IsNull)

- (id)UnsplashObjectForKey:(id)aKey {
    id object = [self objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}

@end
