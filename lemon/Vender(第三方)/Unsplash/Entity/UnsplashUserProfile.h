//
//  UnsplashUserProfile.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashLink;
@class UnsplashBadge;
@class UnsplashProfileImage;

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashUserProfile : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *first_name;
@property (nonatomic, copy) NSString *last_name;
@property (nonatomic, copy) NSString *portfolio_url;
@property (nonatomic, copy) NSString *bio;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, assign) int total_likes;
@property (nonatomic, assign) int total_photos;
@property (nonatomic, assign) int total_collections;
@property (nonatomic, assign) int downloads;
@property (nonatomic, strong) UnsplashProfileImage *unsplashProfileImage;
@property (nonatomic, strong) UnsplashBadge *unsplashBadge;
@property (nonatomic, strong) UnsplashLink *unsplashLink;

+ (UnsplashUserProfile *)userProfileWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
