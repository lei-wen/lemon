//
//  UnsplashUser.h
//  lemon
//
//  Created by lei-wen on 2019/3/22.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashLink;
@class UnsplashProfileImage;

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashUser : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *bio;
@property (nonatomic, strong) UnsplashLink *unsplashLink;
@property (nonatomic, strong) UnsplashProfileImage *unsplashProfileImage;

+ (UnsplashUser *)userWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
