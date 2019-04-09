//
//  UnsplashUrl.m
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashUrl.h"

@implementation UnsplashUrl

+ (UnsplashUrl *)urlWithDic:(NSDictionary *)dic {
    UnsplashUrl *url = [[UnsplashUrl alloc] init];
    url.full = [dic UnsplashObjectForKey:@"full"];
    url.raw = [dic UnsplashObjectForKey:@"raw"];
    url.small = [dic UnsplashObjectForKey:@"small"];
    url.regular = [dic UnsplashObjectForKey:@"regular"];
    url.thumb = [dic UnsplashObjectForKey:@"thumb"];
    return url;
}

@end
