//
//  UnsplashPhoto.m
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashPhoto.h"

@implementation UnsplashPhoto

+ (UnsplashPhoto *)photoWithDic:(NSDictionary *)dic {
    UnsplashPhoto *photo = [[UnsplashPhoto alloc] init];
    photo.id = [dic UnsplashObjectForKey:@"id"];
    photo.likes = [dic UnsplashObjectForKey:@"likes"];
    photo.width = [dic UnsplashObjectForKey:@"width"];
    photo.height = [dic UnsplashObjectForKey:@"height"];
    photo.color = [dic UnsplashObjectForKey:@"color"];
    photo.liked_by_user = [dic UnsplashObjectForKey:@"liked_by_user"];
    photo.created_at = [dic UnsplashObjectForKey:@"created_at"];
    photo.unsplashUser = [UnsplashUser userWithDic:[dic UnsplashObjectForKey:@"user"]];
    photo.unsplashUrl = [UnsplashUrl urlWithDic:[dic UnsplashObjectForKey:@"urls"]];
    photo.unsplashLink = [UnsplashLink linkWithDic:[dic UnsplashObjectForKey:@"links"]];
    return photo;
}

@end
