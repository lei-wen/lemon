//
//  UnsplashApiService.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashApiService.h"

#import "UnsplashPhotosParam.h"
#import "UnsplashCategoriesParam.h"
#import "UnsplashCategoryPhotosParam.h"
#import "UnsplashCollectionsParam.h"
#import "UnsplashCollectionPhotosParam.h"
#import "UnsplashUserProfileParam.h"

@implementation UnsplashApiService

static AFHTTPSessionManager *HTTPSessionManager;
static AFURLSessionManager *URLSessionManager;

+ (UnsplashApiService *)sharedInstance {
    static UnsplashApiService *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (void)initialize {
    if (self == [UnsplashApiService class]) {
        HTTPSessionManager = [AFHTTPSessionManager manager];
        URLSessionManager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    }
}

#pragma mark - //GET /photos
- (void)UnsplashGettingPhotosRequest:(UnsplashPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingPhotoURL];
    NSDictionary *params = [UrlHelper UnsplashGettingPhotosParams:param];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [NSArray arrayWithArray:responseObject];
        NSMutableArray *result = [[NSMutableArray alloc] init];
        for (id obj in array) {
            UnsplashPhoto *photo = [UnsplashPhoto photoWithDic:obj];
            [result addObject:photo];
        }
        complete(result, nil, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, nil, error);
    }];
}

#pragma mark - //GET /categories
- (void)UnsplashGettingCategoriesRequest:(APIDataRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingCategoriesURL];
    NSDictionary *params = [UrlHelper UnsplashGettingCategoriesParams];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [NSArray arrayWithArray:responseObject];
        NSMutableArray *result = [[NSMutableArray alloc] init];
        for (id obj in array) {
            UnsplashCategory *category = [UnsplashCategory categoryWithDic:obj];
            [result addObject:category];
        }
        complete(result, nil, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, nil, error);
    }];
}

#pragma mark - //GET /categories/:id/photos
- (void)UnsplashGettingCategoryPhotosRequest:(UnsplashCategoryPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingPhotosInCategoryURL:[param.id intValue]];
    NSDictionary *params = [UrlHelper UnsplashGettingPhotosInCategoryParams:param];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [NSArray arrayWithArray:responseObject];
        NSMutableArray *result = [[NSMutableArray alloc] init];
        for (id obj in array) {
            UnsplashPhoto *photo = [UnsplashPhoto photoWithDic:obj];
            [result addObject:photo];
        }
        complete(result, nil, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, nil, error);
    }];
}

#pragma mark - //GET /collections
- (void)UnsplashGettingCollectionsRequest:(UnsplashCollectionsParam *)param completionBlock:(APIDataRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingCollectionsURL];
    NSDictionary *params = [UrlHelper UnsplashGettingCollectionsParams:param];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [NSArray arrayWithArray:responseObject];
        NSMutableArray *result = [[NSMutableArray alloc] init];
        for (id obj in array) {
            UnsplashCollection *collection = [UnsplashCollection collectionWithDic:obj];
            [result addObject:collection];
        }
        complete(result, nil, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, nil, error);
    }];
}

#pragma mark - //GET /collections/:id/photos
- (void)UnsplashGettingCollectionPhotosRequest:(UnsplashCollectionPhotosParam *)param completionBlock:(APIDataRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingPhotosInCollectionURL:[param.id intValue]];
    NSDictionary *params = [UrlHelper UnsplashGettingPhotosInCollectionParams:param];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [NSArray arrayWithArray:responseObject];
        NSMutableArray *result = [[NSMutableArray alloc] init];
        for (id obj in array) {
            UnsplashPhoto *photo = [UnsplashPhoto photoWithDic:obj];
            [result addObject:photo];
        }
        complete(result, nil, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, nil, error);
    }];
}

#pragma mark - //GET /users/:username
- (void)UnsplashGettingUserPublicProfileRequest:(UnsplashUserProfileParam *)param completionBlock:(APIInfoRequestCompletionBlock)complete {
    NSString *url = [UrlHelper UnsplashGettingUserPublicProfileURL:param.username];
    NSDictionary *params = [UrlHelper UnsplashGettingUserPublicProfileParams:param];
    
    [HTTPSessionManager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        UnsplashUserProfile *userProfile = [UnsplashUserProfile userProfileWithDic:responseObject];
        complete(userProfile, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        complete(nil, error);
    }];
}

@end
