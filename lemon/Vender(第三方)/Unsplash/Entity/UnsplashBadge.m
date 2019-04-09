//
//  UnsplashBadge.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashBadge.h"

@implementation UnsplashBadge

+ (UnsplashBadge *)badgeWithDic:(NSDictionary *)dic {
    UnsplashBadge *badge = [[UnsplashBadge alloc] init];
    badge.title = [dic UnsplashObjectForKey:@"title"];
    badge.primary = [dic UnsplashObjectForKey:@"primary"];
    badge.slug = [dic UnsplashObjectForKey:@"slug"];
    badge.link = [dic UnsplashObjectForKey:@"link"];
    return badge;
}

@end
