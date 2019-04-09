//
//  UnsplashCoverPhoto.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashCoverPhoto.h"

@implementation UnsplashCoverPhoto

+ (UnsplashCoverPhoto *)coverPhotoWithDic:(NSDictionary *)dic {
    UnsplashCoverPhoto *coverPhoto = [[UnsplashCoverPhoto alloc] init];
    coverPhoto.id = [dic UnsplashObjectForKey:@"id"];
    coverPhoto.width = [dic UnsplashObjectForKey:@"width"];
    coverPhoto.height = [dic UnsplashObjectForKey:@"height"];
    coverPhoto.color = [dic UnsplashObjectForKey:@"color"];
    coverPhoto.likes = [dic UnsplashObjectForKey:@"likes"];
    coverPhoto.liked_by_user = [dic UnsplashObjectForKey:@"liked_by_user"];
    coverPhoto.unsplashUser = [UnsplashUser userWithDic:[dic UnsplashObjectForKey:@"user"]];
    coverPhoto.unsplashUrl = [UnsplashUrl urlWithDic:[dic UnsplashObjectForKey:@"urls"]];
    coverPhoto.unsplashLink = [UnsplashLink linkWithDic:[dic UnsplashObjectForKey:@"links"]];
    
    NSMutableArray *parsedCategories = [NSMutableArray array];
    NSObject *receivedCategories = [dic UnsplashObjectForKey:@"categories"];
    if ([receivedCategories isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCategories) {
            [parsedCategories addObject:[UnsplashCategory categoryWithDic:item]];
        }
    }
    coverPhoto.unsplashCategories = [NSArray arrayWithArray:parsedCategories];
    return coverPhoto;
}

@end
