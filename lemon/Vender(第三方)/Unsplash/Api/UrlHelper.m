//
//  UrlHelper.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UrlHelper.h"

#import "UnsplashPhotosParam.h"
#import "UnsplashCategoriesParam.h"
#import "UnsplashCategoryPhotosParam.h"
#import "UnsplashCollectionsParam.h"
#import "UnsplashCollectionPhotosParam.h"
#import "UnsplashUserProfileParam.h"

@implementation UrlHelper

+ (NSString *)UnsplashDomain {
    return kUnsplashDomain;
}

+ (NSString *)UnsplashHost {
    return kUnsplashHost;
}

+ (NSString *)UnsplashAccessKey {
    return kUnsplashAccessKey;
}

+ (NSString *)UnsplashSecretKey {
    return kUnsplashSecretKey;
}

+ (NSString *)UnsplashGettingURLHelper:(id)param {
    return [NSString stringWithFormat:@"%@%@%@%@", self.UnsplashHost, param , @"?client_id=", self.UnsplashAccessKey];
}

+ (NSString *)UnsplashGettingPhotoURL {
    return [self UnsplashGettingURLHelper:@"/photos"];
}

+ (NSString *)UnsplashGettingCategoriesURL {
    return [self UnsplashGettingURLHelper:@"/categories"];
}

+ (NSString *)UnsplashGettingPhotosInCategoryURL:(int)id {
    NSString *param = [NSString stringWithFormat:@"%@%d%@", @"/categories/", id, @"/photos"];
    return [self UnsplashGettingURLHelper: param];
}

+ (NSString *)UnsplashGettingCollectionsURL {
    return [self UnsplashGettingURLHelper:@"/collections"];
}

+ (NSString *)UnsplashGettingPhotosInCollectionURL:(int)id {
    NSString *param = [NSString stringWithFormat:@"%@%d%@", @"/collections/", id, @"/photos"];
    return [self UnsplashGettingURLHelper: param];
}

+ (NSString *)UnsplashGettingUserPublicProfileURL:(NSString *)username {
    NSString *param = [NSString stringWithFormat:@"%@%@", @"/users/", username];
    return [self UnsplashGettingURLHelper: param];
}



+ (NSDictionary *)UnsplashGettingPhotosParams:(UnsplashPhotosParam *)param {
    return [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInteger: param.page], @"page", [NSNumber numberWithInteger: param.perPage], @"per_page", [UnsplashStruct UnsplashPhotoSortTypeName: param.sortType], @"order_by", nil];
}

+ (NSDictionary *)UnsplashGettingCategoriesParams {
    NSDictionary *param = [[NSDictionary alloc] init];
    return param;
}

+ (NSDictionary *)UnsplashGettingPhotosInCategoryParams:(UnsplashCategoryPhotosParam *)param {
    return [[NSDictionary alloc] initWithObjectsAndKeys: param.id, @"id", [NSNumber numberWithInteger: param.page], @"page", [NSNumber numberWithInteger: param.perPage], @"per_page", nil];
}

+ (NSDictionary *)UnsplashGettingCollectionsParams:(UnsplashCollectionsParam *)param {
    return [[NSDictionary alloc] initWithObjectsAndKeys: [NSNumber numberWithInteger: param.page], @"page", [NSNumber numberWithInteger: param.perPage], @"per_page", nil];
}

+ (NSDictionary *)UnsplashGettingPhotosInCollectionParams:(UnsplashCollectionPhotosParam *)param {
    return [[NSDictionary alloc] initWithObjectsAndKeys: param.id, @"id", [NSNumber numberWithInteger: param.page], @"page", [NSNumber numberWithInteger: param.perPage], @"per_page", nil];
}

+ (NSDictionary *)UnsplashGettingUserPublicProfileParams:(UnsplashUserProfileParam *)param {
    return [[NSDictionary alloc] initWithObjectsAndKeys: param.username, @"username", [NSNumber numberWithInteger: param.w], @"w", [NSNumber numberWithInteger: param.h], @"h", nil];
}

@end
