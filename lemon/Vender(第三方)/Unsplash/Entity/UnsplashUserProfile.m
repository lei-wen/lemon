//
//  UnsplashUserProfile.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashUserProfile.h"

@implementation UnsplashUserProfile

+ (UnsplashUserProfile *)userProfileWithDic:(NSDictionary *)dic {
    UnsplashUserProfile *userProfile = [[UnsplashUserProfile alloc] init];
    userProfile.username = [dic UnsplashObjectForKey:@"username"];
    userProfile.name = [dic UnsplashObjectForKey:@"name"];
    userProfile.first_name = [dic UnsplashObjectForKey:@"first_name"];
    userProfile.last_name = [dic UnsplashObjectForKey:@"last_name"];
    userProfile.portfolio_url = [dic UnsplashObjectForKey:@"portfolio_url"];
    userProfile.bio = [dic UnsplashObjectForKey:@"bio"];
    userProfile.location = [dic UnsplashObjectForKey:@"location"];
    userProfile.total_likes = [[dic UnsplashObjectForKey:@"total_likes"] intValue];
    userProfile.total_photos = [[dic UnsplashObjectForKey:@"total_photos"] intValue];
    userProfile.total_collections = [[dic UnsplashObjectForKey:@"total_collections"] intValue];
    userProfile.downloads = [[dic UnsplashObjectForKey:@"downloads"] intValue];
    userProfile.unsplashProfileImage = [UnsplashProfileImage profileImageWithDic:[dic UnsplashObjectForKey:@"profile_image"]];
    userProfile.unsplashBadge = [UnsplashBadge badgeWithDic:[dic UnsplashObjectForKey:@"badge"]];
    userProfile.unsplashLink = [UnsplashLink linkWithDic:[dic UnsplashObjectForKey:@"links"]];
    return userProfile;
}

@end
