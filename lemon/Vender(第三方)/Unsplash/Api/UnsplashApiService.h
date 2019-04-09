//
//  UnsplashApiService.h
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^APIInfoRequestCompletionBlock)(id _Nullable response,
                                              NSError *_Nullable error);
typedef void (^APIDataRequestCompletionBlock)(NSArray *_Nullable data,
                                              id _Nullable response,
                                              NSError *_Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface UnsplashApiService : NSObject

+ (UnsplashApiService *)sharedInstance;
- (void)UnsplashGettingPhotosRequest:(UnsplashPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete;
- (void)UnsplashGettingCategoriesRequest:(APIDataRequestCompletionBlock)complete;
- (void)UnsplashGettingCategoryPhotosRequest:(UnsplashCategoryPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete;
- (void)UnsplashGettingCollectionsRequest:(UnsplashCollectionsParam *)param completionBlock:(APIDataRequestCompletionBlock)complete;
- (void)UnsplashGettingCollectionPhotosRequest:(UnsplashCollectionPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete;
- (void)UnsplashGettingUserPublicProfileRequest:(UnsplashUserProfileParam *)param completionBlock:(APIInfoRequestCompletionBlock)complete;

@end

NS_ASSUME_NONNULL_END
