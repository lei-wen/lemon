//
//  UnsplashCoverPhoto.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashCategory;
@class UnsplashUser;
@class UnsplashUrl;
@class UnsplashLink;

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashCoverPhoto : NSObject

@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *width;
@property (nonatomic, copy) NSString *height;
@property (nonatomic, copy) NSString *color;
@property (nonatomic, copy) NSString *likes;
@property (nonatomic, assign) bool liked_by_user;
@property (nonatomic, strong) UnsplashUser *unsplashUser;
@property (nonatomic, strong) UnsplashUrl *unsplashUrl;
@property (nonatomic, strong) UnsplashLink *unsplashLink;
@property (nonatomic, copy) NSArray <UnsplashCategory *> *unsplashCategories;

+ (UnsplashCoverPhoto *)coverPhotoWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
