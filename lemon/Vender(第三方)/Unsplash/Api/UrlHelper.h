//
//  UrlHelper.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UnsplashPhotosParam;
@class UnsplashCategoriesParam;
@class UnsplashCategoryPhotosParam;
@class UnsplashCollectionsParam;
@class UnsplashCollectionPhotosParam;
@class UnsplashUserProfileParam;

NS_ASSUME_NONNULL_BEGIN

@interface UrlHelper : NSObject

+ (NSString *)UnsplashDomain;
+ (NSString *)UnsplashHost;
+ (NSString *)UnsplashAccessKey;
+ (NSString *)UnsplashSecretKey;

+ (NSString *)UnsplashGettingPhotoURL;
+ (NSString *)UnsplashGettingCategoriesURL;
+ (NSString *)UnsplashGettingPhotosInCategoryURL:(int)id;
+ (NSString *)UnsplashGettingCollectionsURL;
+ (NSString *)UnsplashGettingPhotosInCollectionURL:(int)id;
+ (NSString *)UnsplashGettingUserPublicProfileURL:(NSString *)username;

+ (NSDictionary *)UnsplashGettingPhotosParams:(UnsplashPhotosParam *)param;
+ (NSDictionary *)UnsplashGettingCategoriesParams;
+ (NSDictionary *)UnsplashGettingPhotosInCategoryParams:(UnsplashCategoryPhotosParam *)param;
+ (NSDictionary *)UnsplashGettingCollectionsParams:(UnsplashCollectionsParam *)param;
+ (NSDictionary *)UnsplashGettingPhotosInCollectionParams:(UnsplashCollectionPhotosParam *)param;
+ (NSDictionary *)UnsplashGettingUserPublicProfileParams:(UnsplashUserProfileParam *)param;

@end

NS_ASSUME_NONNULL_END
