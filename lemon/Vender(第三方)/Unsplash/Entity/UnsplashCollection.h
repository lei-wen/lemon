//
//  UnsplashCollection.h
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashCoverPhoto;
@class UnsplashUser;
@class UnsplashLink;

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashCollection : NSObject

@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *description_;
@property (nonatomic, strong) NSDate *published_at;
@property (nonatomic, assign) bool curated;
@property (nonatomic, copy) NSString *total_photos;
@property (nonatomic, assign) bool private_;
@property (nonatomic, copy) NSString *share_key;
@property (nonatomic, strong) UnsplashCoverPhoto *unsplashCoverPhoto;
@property (nonatomic, strong) UnsplashUser *unsplashUser;
@property (nonatomic, strong) UnsplashLink *unsplashLink;

+ (UnsplashCollection *)collectionWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
