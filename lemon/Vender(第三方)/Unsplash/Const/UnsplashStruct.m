//
//  UnsplashStruct.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashStruct.h"

@implementation UnsplashStruct

+ (NSDictionary *)UnsplashPhotoSortTypeAPINames {
    return @{@(UnsplashPhotoSortTypeLatest)  : @"latest",
             @(UnsplashPhotoSortTypeOldest)  : @"oldest",
             @(UnsplashPhotoSortTypePopular) : @"popular"};
}

+ (NSString *)UnsplashPhotoSortTypeName:(UnsplashPhotoSortType)sortType {
    NSDictionary *names = [self UnsplashPhotoSortTypeAPINames];
    return sortType < names.count ? names[@(sortType)] : nil;
}

@end
