//
//  UnsplashCategory.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashCategory.h"

@implementation UnsplashCategory

+ (UnsplashCategory *)categoryWithDic:(NSDictionary *)dic {
    UnsplashCategory *category = [[UnsplashCategory alloc] init];
    category.id = [dic UnsplashObjectForKey:@"id"];
    category.title = [dic UnsplashObjectForKey:@"title"];
    category.photo_count = [dic UnsplashObjectForKey:@"photo_count"];
    category.unsplashLink = [dic UnsplashObjectForKey:@"links"];
    return category;
}

@end
