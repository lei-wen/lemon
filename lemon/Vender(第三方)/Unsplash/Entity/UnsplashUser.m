//
//  UnsplashUser.m
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashUser.h"

@implementation UnsplashUser

+ (UnsplashUser *)userWithDic:(NSDictionary *)dic {
    UnsplashUser *user = [[UnsplashUser alloc] init];
    user.name = [dic UnsplashObjectForKey:@"name"];
    user.username = [dic UnsplashObjectForKey:@"username"];
    user.id = [dic UnsplashObjectForKey:@"id"];
    user.bio = [dic UnsplashObjectForKey:@"bio"];
    user.unsplashLink = [UnsplashLink linkWithDic:[dic UnsplashObjectForKey:@"links"]];
    user.unsplashProfileImage = [UnsplashProfileImage profileImageWithDic:[dic UnsplashObjectForKey:@"profile_image"]];
    return user;
}

@end
