//
//  UnsplashLink.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashLink.h"

@implementation UnsplashLink

+ (UnsplashLink *)linkWithDic:(NSDictionary *)dic {
    UnsplashLink *link = [[UnsplashLink alloc] init];
    link.download = [dic UnsplashObjectForKey:@"download"];
    link.html = [dic UnsplashObjectForKey:@"html"];
    link.self_ = [dic UnsplashObjectForKey:@"self"];
    link.photos = [dic UnsplashObjectForKey:@"photos"];
    link.likes = [dic UnsplashObjectForKey:@"likes"];
    link.related = [dic UnsplashObjectForKey:@"related"];
    return link;
}

@end
