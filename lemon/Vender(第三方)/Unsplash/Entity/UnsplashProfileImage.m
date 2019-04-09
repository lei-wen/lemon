//
//  UnsplashProfileImage.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashProfileImage.h"

@implementation UnsplashProfileImage

+ (UnsplashProfileImage *)profileImageWithDic:(NSDictionary *)dic {
    UnsplashProfileImage *profileImage = [[UnsplashProfileImage alloc] init];
    profileImage.small = [dic UnsplashObjectForKey:@"small"];
    profileImage.medium = [dic UnsplashObjectForKey:@"medium"];
    profileImage.large = [dic UnsplashObjectForKey:@"large"];
    return profileImage;
}

@end
